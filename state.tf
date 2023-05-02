terraform {
  backend "s3" {
    bucket = "terraform-vardevops"
    key    = "roboshop/dev/terraform.tfstate"
    region = "us-east-1"
  }
}