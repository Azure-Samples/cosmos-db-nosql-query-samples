using System.Configuration;
using Microsoft.Azure.Cosmos;
using Newtonsoft.Json.Linq;
using Validate.Test.Fixtures;
using Validate.Test.Providers;
using Xunit;
using Xunit.Sdk;

namespace Validate.Test;

public sealed class AccuracyTest : IClassFixture<CosmosDbFixture>
{
    private readonly Container _container;

    public AccuracyTest(CosmosDbFixture fixture)
    {
        ArgumentNullException.ThrowIfNull(fixture);
        _container = fixture.Container;
    }

    [SkippableTheory(DisplayName = "Test Script")]
    [MemberData(nameof(FolderSource.TestData), MemberType = typeof(FolderSource))]
    public async Task TestScriptAccuracyAsync(string folderName)
    {
        string? toolDirectory = Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly()?.Location);
        if (toolDirectory is null)
        {
            return;
        }
        string? directory = Path.Combine(toolDirectory, "scripts", folderName);
        var files = Directory.GetFiles(directory);

        var seedFile = files.SingleOrDefault(f => Path.GetFileName(f) == "seed.json");

        if (seedFile is not null)
        {
            string seedJson = File.ReadAllText(seedFile!);
            IEnumerable<JToken> items = JArray.Parse(seedJson);

            TransactionalBatch batch = _container.CreateTransactionalBatch(PartitionKey.None);
            foreach (var item in items)
            {
                batch.UpsertItem(item);
            }
            await batch.ExecuteAsync();
        }

        var queryFile = files.SingleOrDefault(f => Path.GetFileName(f) == "query.sql");
        var resultFile = files.SingleOrDefault(f => Path.GetFileName(f) == "result.json");

        Skip.If(queryFile is null || resultFile is null);

        string queryString = File.ReadAllText(queryFile!);

        var query = new QueryDefinition(queryString);

        using FeedIterator<dynamic> feed = _container.GetItemQueryIterator<dynamic>(query);

        JArray result = new();
        while (feed.HasMoreResults)
        {
            FeedResponse<dynamic> response = await feed.ReadNextAsync();
            foreach (dynamic item in response)
            {
                result.Add(item);
            }
        }

        string expectedJson = File.ReadAllText(resultFile!);
        var expected = JToken.Parse(expectedJson);

        bool equivalent = JToken.DeepEquals(expected, result);
        Assert.True(equivalent);
    }
}