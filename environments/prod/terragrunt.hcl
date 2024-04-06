terraform {
  source = "git::ssh://git@github.com/sudheerduba/aws-vpc-network-terraform.git//modules/vpc?ref=v1.1.0"
}


include "remote_state" {
  path = find_in_parent_folders()
}

inputs = {
  environment = "production"
  region_name = "us-east-2"
  public_az   = ["us-east-2a", "us-east-2b"]
  private_az  = ["us-east-2a", "us-east-2b"]
}
