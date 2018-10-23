provider "kong" {
  kong_admin_uri = "${var.admin_api_url}"
  # kong_admin_username = "${var.admin_username}"
  # kong_admin_password = "${var.admin_password}"
  # kong_api_key = "${var.admin_api_key}"
  tls_skip_verify = "${var.tls_skip_verify}"
}

provider "aws" {
  version = "~> 1.39.0"
  region = "${var.backend_s3_region}"
}
