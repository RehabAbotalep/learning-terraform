## Resources:

- Resource Group
- Azure Container Registry (ACR)
- Key Vault
- Storage Account
- Event Hub
- Service Bus
- App Service
- SQL Server

## Setup Steps:

### Azure Resource Creation:

- Create a new Resource Group to organize your Azure resources efficiently.
- Set up an Azure Container Registry (ACR) to store and manage your container images.
- Provision a Key Vault to securely store sensitive information such as credentials and secrets.
- Establish a Storage Account for data storage needs.
- Configure an Event Hub for real-time data ingestion and processing.
- Implement a Service Bus for reliable messaging between applications.
- Deploy an App Service for hosting your web applications.
- Set up a SQL Server instance for managing relational databases.

### Secrets Management:

Create secrets within the Key Vault containing ACR credentials (username and password).

### Access Control:

Define an access policy within the Key Vault to grant the App Service the necessary permissions to read the ACR secrets securely.

### Configuration Handling:

Configure the App Service application settings to reference the secrets stored in the Key Vault, ensuring sensitive information remains protected.

### Environment Configuration:

Establish two environments: Development (Dev) and Production (Prod).

#### Dev Environment Configuration:

Configure the Dev environment with the following specifications:
  - App Service SKU: S1
  - Storage Account Replication Type: LRS

#### Prod Environment Configuration:

Configure the Prod environment with the following specifications:
  - App Service SKU: P1v2
  - Storage Account Replication Type: GRS (Geo-Redundant Storage)

### Outputs:

- Database Name
- App Service Name
- Key Vault Name
