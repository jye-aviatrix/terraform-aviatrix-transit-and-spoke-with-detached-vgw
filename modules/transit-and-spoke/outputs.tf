output "dev-pub" {
  value = module.dev-pub
}

output "dev-priv" {
  value = module.dev-priv
}

output "prd-pub" {
  value = module.prd-pub
}

output "prd-priv" {
  value = module.prd-priv
}

output "transit_local_as_number" {
  value = module.mc_transit.transit_gateway.local_as_number
}

output "transit_gw_name" {
  value = module.mc_transit.transit_gateway.gw_name
}

output "transit_vpc_id" {
  value = module.mc_transit.vpc.vpc_id
}