terraform {


  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}
locals {
  environment = "production"
  location = "eastus"
}

resource "azurerm_resource_group" "rg01" {
    name = "rg01-${local.environment}"
    location = local.location
}


# resource "azurerm_virtual_network" "vnet01" {
#   name                = var.virtual_network_name
#   location            = azurerm_resource_group.rg01.location
#   resource_group_name = azurerm_resource_group.rg01.name
#   address_space       = var.virtual_network_address
# }

# resource "azurerm_subnet" "subnet1" {
#   name                 = var.virtual_network_subnet_1_name
#   resource_group_name  = azurerm_resource_group.rg01.name
#   virtual_network_name = azurerm_virtual_network.vnet01.name
#   address_prefixes     = var.virtual_network_subnet_1_address
  

#   delegation {
#     name = "example-delegation"

#     service_delegation {
#       name    = "Microsoft.Web/serverFarms"
#       actions = ["Microsoft.Network/virtualNetworks/subnets/action"]
#     }
#   }
# }

# resource "azurerm_service_plan" "plan01" {
#   name                = var.app_sevice_plan_name
#   location            = azurerm_resource_group.rg01.location
#   resource_group_name = azurerm_resource_group.rg01.name
#   os_type             = "Linux"
#   sku_name            = "B1"
# }

# resource "azurerm_linux_web_app" "example" {
#   name                = var.app_service_name
#   location            = azurerm_resource_group.rg01.location
#   resource_group_name = azurerm_resource_group.rg01.name
#   service_plan_id     = azurerm_service_plan.plan01.id
#   https_only            = true
#   site_config { 
#     minimum_tls_version = "1.2"
# }
# }

# resource "azurerm_app_service_virtual_network_swift_connection" "example" {
#   app_service_id = azurerm_linux_web_app.example.id
#   subnet_id      = azurerm_subnet.subnet1.id
# }

# resource "azurerm_app_service_source_control" "sourcecontrol" {
#   app_id             = azurerm_linux_web_app.example.id
#   repo_url           = "https://github.com/freelearn2000/IAC1.git"
#   branch             = "master"
#   use_manual_integration = true
#   use_mercurial      = false
# }
