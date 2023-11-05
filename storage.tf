data "azurerm_resource_group" "DataCohortLab" { # Store the resource group that has already been created within Azure
  name = "rg-data-cohort-labs"
}

resource "azurerm_storage_account" "Storaccount1" { # The storage account that contains a delete_retention_policy
  name                     = "akstrgccntqualyfi"
  resource_group_name      = data.azurerm_resource_group.DataCohortLab.name
  location                 = data.azurerm_resource_group.DataCohortLab.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  blob_properties{
    delete_retention_policy{
      days = 30
    }
  }
}

resource "time_sleep" "wait_for_creation" {
  depends_on = [azurerm_storage_account.Storaccount1]
  create_duration   = "30s"
}

resource "azurerm_storage_container" "Bronze1" { # Creating the Bronze container within the storage account akstrgccntqualyfi
  name                 = "bronze"
  storage_account_name = azurerm_storage_account.Storaccount1.name
}

resource "azurerm_storage_container" "Silver1" { # Creating the Silver container within the storage account akstrgccntqualyfi
  name                 = "silver"
  storage_account_name = azurerm_storage_account.Storaccount1.name
}

resource "azurerm_storage_container" "Gold1" { # Creating the Gold container within the storage account akstrgccntqualyfi
  name                 = "gold"
  storage_account_name = azurerm_storage_account.Storaccount1.name
}