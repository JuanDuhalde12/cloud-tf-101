virginia_cidr = "10.10.0.0/16"
# private_subnet = "10.10.0.0/24"
# public_subnet = "10.10.1.0/24"
subnets = [ "10.10.0.0/24","10.10.1.0/24" ]
tags = {
  "env" = "dev"
  "owner" = "Juan"
  "cloud" = "AWS"
  "IAC" = "Terraform"
  "IAC_Version" = "1.5.6"
  "project" = "cerberus"
  "region" = "virginia"
}
ec2_specs = {
  "ami" = "ami-04cb4ca688797756f"
  "instance_type" = "t2.micro"
}
sg_ingress_cidr = "0.0.0.0/0"
enable_monitoring = true
