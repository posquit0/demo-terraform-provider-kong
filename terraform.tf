terraform {
  required_version = ">= 0.11.7"

  # backend "s3" {
  #   bucket = "terraform.${var.project}.${var.company}.${var.environment}"
  #   key = "tfstate"
  #   region = "${var.backend_s3_region}"
  #   encrypt = true
  #   dynamodb_table = ""
  # }
}

# resource "aws_s3_bucket" "terraform-state-store" {
#   bucket = "terraform.${lower(var.project)}.${lower(var.company)}.${lower(var.environment)}"
#   acl = "private"
#   region = "${var.backend_s3_region}"

#   versioning {
#     enabled = true
#   }

#   force_destroy = true

#   tags {
#     owner = "terraform"
#     organization = "${var.organization}"
#     env = "${var.environment}"
#     project = "${var.project}"

#     Name = "terraform.${lower(var.project)}.${lower(var.company)}.${lower(var.environment)}"
#   }
# }
