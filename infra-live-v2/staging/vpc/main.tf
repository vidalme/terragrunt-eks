provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "local" {
    path = "staging/vpc/terraform.tfstated"
  }
}

module "vpc" {
  source          = "../../../infra-modules/vpc"
  env             = "staging"
  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.0.0.0/19", "10.0.32.0/19"]
  public_subnets  = ["10.0.64.0/19", "10.0.96.0/19"]

  private_subnets_tags = {
    "kubernetes.io/role/internal-elb"    = 1
    "kubernetes.io/cluster/staging-demo" = "owned"
  }
  public_subnets_tags = {
    "kubernetes.io/role/elb"             = 1
    "kubernetes.io/cluster/staging-demo" = "owned"
  }
}

