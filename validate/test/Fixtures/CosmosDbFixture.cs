using Microsoft.Azure.Cosmos;

namespace Validate.Test.Fixtures;

public sealed class CosmosDbFixture : IDisposable
{
    private CosmosClient? Client { get; set; }

    public string? ConnectionString { get; private set; } = null;

    public Database? Database { get; private set; } = null;

    public Container? Container { get; private set; } = null;

    public CosmosDbFixture()
    {
        this.ConnectionString = Environment.GetEnvironmentVariable("COSMOSDB__CONNECTIONSTRING");

        try
        {
            this.Client = new CosmosClient(this.ConnectionString);

            var databaseTask = this.Client.CreateDatabaseIfNotExistsAsync($"validation-automated", 400);
            this.Database = databaseTask.Result;

            var containerTask = this.Database.CreateContainerIfNotExistsAsync($"data-automated", "/pk");
            this.Container = containerTask.Result;
        }
        catch (Exception)
        {
            this.Client?.Dispose();
            throw;
        }
    }

    public void Dispose()
    {
        this.Client?.Dispose();
    }
}