module "ue2_transit_and_spoke" {
  source = "./modules/transit-and-spoke"
    account = var.account
    region = "us-east-2"
    region_code = "ue2"
    key_name = var.key_name
    transit_cidr = "10.8.0.0/23"
    dev_spoke_cidr = "10.8.16.0/24"
    prd_spoke_cidr = "10.8.32.0/24"
    local_as_number = 65002
}

output "ue2_transit_and_spoke" {
  value = module.ue2_transit_and_spoke
}


module "ue1_transit_and_spoke" {
  source = "./modules/transit-and-spoke"
    account = var.account
    region = "us-east-1"
    region_code = "ue1"
    key_name = var.key_name
    transit_cidr = "10.16.0.0/23"
    dev_spoke_cidr = "10.16.16.0/24"
    prd_spoke_cidr = "10.16.32.0/24"  
    local_as_number = 65001
    providers = {
      aws = aws.ue1
    }
}

output "ue1_transit_and_spoke" {
  value = module.ue1_transit_and_spoke
}