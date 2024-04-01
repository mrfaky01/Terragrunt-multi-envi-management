terraform {
  source = "git::ssh://git@github.com/sudheerduba/aws-vpc-network-terraform.git//modules/vpc?ref=v1.1.0"
}


include "remote_state" {
  path = find_in_parent_folders()
}

inputs = {
  environment = "staging"
  region_name = "us-west-2"
  public_az   = ["us-west-2a", "us-west-2b"]
  private_az  = ["us-west-2a", "us-west-2b"]
}