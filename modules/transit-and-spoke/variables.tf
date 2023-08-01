variable "region" {
  type = string
  description = "Provide AWS region"
}

variable "key_name" {
    type = string
    description = "Provide EC2 keypair name" 
}

variable "account" {
  type = string
  description = "Provide Aviatrix Access Account name"
}

variable "region_code" {
  type        = string
  description = "Three letter of region code, EG: us-east-2 -> ue2"
}

variable "transit_cidr" {
  type        = string
  description = "Provide transit VPC CIDR"
}

variable "dev_spoke_cidr" {
  type        = string
  description = "Provide dev spoke VPC CIDR"
}

variable "prd_spoke_cidr" {
  type        = string
  description = "Provide prod spoke VPC CIDR"
}

variable "local_as_number" {
  type = number
  description = "Provide transit ASN number"
}
