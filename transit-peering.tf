module "mc-transit-peering" {
  source  = "terraform-aviatrix-modules/mc-transit-peering/aviatrix"
  version = "1.0.8"
  transit_gateways = [
    module.ue1_transit_and_spoke.transit_gw_name,
    module.ue2_transit_and_spoke.transit_gw_name
  ]
}