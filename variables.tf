## General
variable "company" {
  default = "my-company"
}

variable "organization" {
  default = "platform"
}

variable "environment" {
  default = "dev"
}

variable "project" {
  default = "apigateway"
}


## Backend
variable "backend_s3_region" {
  default = "ap-northeast-2"
}


## Kong Admin API
variable "admin_api_url" {
  description = "URL address for Kong Admin API"
  type = "string"
  default = "http://localhost:8001"
}

variable "api_username" {
  description = "Username for Kong Admin API"
  type = "string"
  default = ""
}

variable "api_password" {
  description = "Password for Kong Admin API"
  type = "string"
  default = ""
}

variable "api_key" {
  description = "API Key for Kong Admin API"
  type = "string"
  default = ""
}

variable "tls_skip_verify" {
  description = "Boolean to skip TLS check for HTTPS requests"
  default = false
}


## API Gateway
variable "api_gateway_host" {
  type = "string"
  default = ""
}
