
variable "location" {
  description = "The Azure location for the resources"
  type        = string
  default     = "East US 2"
}

variable "tags" {
  description = "A map of tags to assign to resources"
  type        = map(string)
  default = {
    Environment = "dev"
    Project     = "del"
  }
}



variable "subscription_id" {
  type = string
}


variable "aks_windows_secret_value" {
  description = "The value of the AKS Windows secret"
  type        = string
  sensitive   = true
}
