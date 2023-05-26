module "vpc" {
  source = "https://github.com/vareddy101091/tf-module-vpc.git"

  for_each = var.vpc
  cidr_block = each.value["cidr_block"]
}