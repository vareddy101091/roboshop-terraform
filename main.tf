module "vpc" {
  source = "git::https://github.com/vareddy101091/tf-module-vpc.git"

  for_each   = var.vpc
  cidr_block = each.value["cidr_block"]
  subnets = each.value["subnets"]
  tags = local.tags
  env = var.env
}

/*module "web" {
  source = "git::https://github.com/vareddy101091/tf-module-app.git"

  for_each = var.app
  instance_type = each.value["instance_type"]
  subnet_id = element(lookup(lookup(lookup(module.vpc, "main", null),each.value["subnet_name"], null), "subnet_ids", null), 0)
}*/

//element(lookup(lookup(module.vpc, each.value["subnet_name"], null), "subnet_ids", null), 0)