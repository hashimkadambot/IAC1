variable resource_group_name{
        type = string
        description = "Azure Resource Group Name"
    }

variable "resource_group_location" {
        type = string
        description = "Azure Resource Group Location"
  }

  variable "virtual_network_name" {
    type = string
    description = "Azure Virtual Network Name"
  
    }

variable "virtual_network_address" {
    type = list
    description = "Azure Virtual Network Address Space"
  
    }

    variable "virtual_network_subnet_1_name" {
    type = string
    description = "Azure Subnet Name for App Service"
    }

variable "virtual_network_subnet_1_address" {
    type = list
    description = "Azure Subnet Address for App Service"
    }

    variable "app_sevice_plan_name" {
    type = string
    description = "Azure App Service Plan Name"
  }

variable "app_service_name" {
    type = string
    description = "Azure Web App Name"
  }
