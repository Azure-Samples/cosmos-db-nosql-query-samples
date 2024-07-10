using Microsoft.Azure.Cosmos;

namespace Validate.Test.Fixtures;

public sealed class CosmosDbFixture : IDisposable
{
    private CosmosClient Client { get; set; }

    public Container Container { get; private set; }

    public CosmosDbFixture()
    {
        string connectionString = Environment.GetEnvironmentVariable("COSMOSDB__CONNECTIONSTRING")
            ?? throw new InvalidOperationException("Missing connection string");

        this.Client = new CosmosClient(connectionString);

        var databaseTask = this.Client.CreateDatabaseIfNotExistsAsync($"validation-automated", 400);
        Database database = databaseTask.Result;

        var containerTask = database.CreateContainerIfNotExistsAsync($"data-automated", "/pk");
        this.Container = containerTask.Result;
    }

    public void Dispose()
    {
        this.Client?.Dispose();
    }
}