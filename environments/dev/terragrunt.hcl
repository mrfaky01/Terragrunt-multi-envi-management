terraform {
  source = "git::ssh://git@github.com/sudheerduba/aws-vpc-network-terraform.git//modules/vpc?ref=v1.1.0"
}

inputs = {
  region_name = "us-west-1"
  public_az   = ["us-west-1b", "us-west-1c"]
  private_az  = ["us-west-1b", "us-west-1c"]
}