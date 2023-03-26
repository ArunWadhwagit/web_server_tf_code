variable "location" {
 description = "The location where resources will be created"
 default     = "East Us"
 type = string
}
variable "zantac" {
 description = "Prefix for all resources"
 default     = "zantac_case_study"
 type = string
}
locals {
  regions_with_availability_zones = ["eastus"] #["centralus","eastus2","eastus","westus"]
  zones = contains(local.regions_with_availability_zones, var.location) ? list("1","2","3") : null
}
variable "availability_zone_names" {
 description = "The name of the virtual network in which the resources will be created"
 default     = ["eastus"]
 type    = list(string)
}


