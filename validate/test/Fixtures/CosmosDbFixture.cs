using Microsoft.Azure.Cosmos;

namespace Validate.Test.Fixtures;

public sealed class CosmosDbFixture : IDisposable
{
    public CosmosClient Client { get; private set; }

    public CosmosDbFixture()
    {
        string connectionString = Environment.GetEnvironmentVariable("COSMOSDB__CONNECTIONSTRING") ??
            throw new InvalidOperationException("Missing Azure Cosmos DB for NoSQL connection string");
        this.Client = new CosmosClient(connectionString);
    }

    public void Dispose()
    {
        this.Client.Dispose();
    }
}