resource "aws_vpn_gateway" "vgw_ue2" {
  tags = {
    Name = "vgw_ue2"
  }
  amazon_side_asn = 65010
}

resource "aws_vpn_gateway" "vgw_ue1" {
  tags = {
    Name = "vgw_ue1"
  }
  amazon_side_asn = 65020
  provider = aws.ue1
}


# Create an Aviatrix VGW Connection
resource "aviatrix_vgw_conn" "ue2" {
  conn_name        = "ue2-transit-to-vgw"
  gw_name          = module.ue2_transit_and_spoke.transit_gw_name
  vpc_id           = module.ue2_transit_and_spoke.transit_vpc_id
  bgp_vgw_id       = aws_vpn_gateway.vgw_ue2.id
  bgp_vgw_account  = var.account
  bgp_vgw_region   = var.region
  bgp_local_as_num = module.ue2_transit_and_spoke.transit_local_as_number
#   prepend_as_path  = [
#     module.mc_transit.transit_gateway.local_as_number,
#     module.mc_transit.transit_gateway.local_as_number,
#     module.mc_transit.transit_gateway.local_as_number
#   ]
}


resource "aviatrix_vgw_conn" "ue1" {
  conn_name        = "ue1-transit-to-vgw"
  gw_name          = module.ue1_transit_and_spoke.transit_gw_name
  vpc_id           = module.ue1_transit_and_spoke.transit_vpc_id
  bgp_vgw_id       = aws_vpn_gateway.vgw_ue1.id
  bgp_vgw_account  = var.account
  bgp_vgw_region   = "us-east-1"
  bgp_local_as_num = module.ue1_transit_and_spoke.transit_local_as_number
  prepend_as_path  = [
    module.ue1_transit_and_spoke.transit_local_as_number,
    module.ue1_transit_and_spoke.transit_local_as_number,
    module.ue1_transit_and_spoke.transit_local_as_number
  ]
}