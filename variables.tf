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