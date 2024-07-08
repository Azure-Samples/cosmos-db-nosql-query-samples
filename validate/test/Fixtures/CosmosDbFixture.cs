using Microsoft.Azure.Cosmos;

namespace Validate.Test.Fixtures;

public sealed class CosmosDbFixture : IDisposable
{
    public CosmosClient Client { get; private set; }

    public CosmosDbFixture()
    {
        CosmosClientOptions clientOptions = new()
        {
            HttpClientFactory = () => new HttpClient(
                new HttpClientHandler()
                {
                    ServerCertificateCustomValidationCallback = (req, cert, chain, errors) => true
                }
            ),
            ConnectionMode = ConnectionMode.Gateway
        };
        string connectionString = Environment.GetEnvironmentVariable("COSMOSDB__CONNECTIONSTRING") ?? throw new InvalidOperationException("Missing connection string");
        this.Client = new CosmosClient(connectionString, clientOptions);
    }

    public void Dispose()
    {
        this.Client.Dispose();
    }
}