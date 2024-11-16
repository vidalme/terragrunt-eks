# remote_state {
#     backend = "local"
#     generate = {
#         path = "backend.tf"
#         if_exists = "overwrite_terragrunt"
#     }

#     config = {
#         path = "${get_parent_terragrunt_dir()}/${path_relative_to_include()}/terraform.tfstate"
#     }
# }

# generate "provider" {
#   path = "provider.tf"
#   if_exists = "overwrite_terragrunt"
#   contents = <<EOF
# provider "aws" {
#   region = "us-east-1"
# }
# EOF
# }


# Indicate where to source the terraform module from.
# The URL used here is a shorthand for
# "tfr://registry.terraform.io/terraform-aws-modules/vpc/aws?version=5.8.1".
# Note the extra `/` after the protocol is required for the shorthand
# notation.
# terraform {
#   source = "tfr:///terraform-aws-modules/vpc/aws?version=5.8.1"
# }

