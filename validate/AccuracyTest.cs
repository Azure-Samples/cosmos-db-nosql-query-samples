using Microsoft.Azure.Cosmos;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.IO;
using System.Linq;
using System.Net.Http;
using Xunit;

public sealed class AccuracyTest
{
    private static Container? _container;

    private static async Task<Container> GetContainerAsync()
    {
        if (_container is null)
        {
            CosmosClient client = new ("AccountEndpoint=https://localhost:8081/;AccountKey=C2y6yDjf5/R+ob0N8A7Cgv30VRDJIWEHLM+4QDU5DE2nQ9nDuVTqobD4b8mGGyPMbIZnqyMsEcaGQy67XIw/Jw==");
            Database database = await client.CreateDatabaseIfNotExistsAsync($"validation-automated", 400);
            _container = await database.CreateContainerIfNotExistsAsync($"data-automated", "/pk");
        }
        return _container;
    }

    [Theory(DisplayName = "TestScriptAccuracy")]
    [MemberData(nameof(FolderSource.TestData), MemberType = typeof(FolderSource))]
    public async Task TestScriptAccuracyAsync(string f)
    {
        var files = Directory.GetFiles(f);

        var seedFile = files.SingleOrDefault(f => Path.GetFileName(f) == "seed.json");

        Container container = await GetContainerAsync();

        if (seedFile is not null)
        {
            string seedJson = File.ReadAllText(seedFile!);
            IEnumerable<JToken> items = JArray.Parse(seedJson);

            TransactionalBatch batch = container.CreateTransactionalBatch(PartitionKey.None);
            foreach (var item in items)
            {
                batch.UpsertItem(item);
            }
            await batch.ExecuteAsync();
        }

        var queryFile = files.SingleOrDefault(f => Path.GetFileName(f) == "query.sql");
        var resultFile = files.SingleOrDefault(f => Path.GetFileName(f) == "result.json");

        string queryString = File.ReadAllText(queryFile!);

        var query = new QueryDefinition(queryString);

        using FeedIterator<dynamic> feed = container.GetItemQueryIterator<dynamic>(query);

        JArray result = new ();
        while (feed.HasMoreResults)
        {
            FeedResponse<dynamic> response = await feed.ReadNextAsync();
            foreach(dynamic item in response)
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