locals {
  regex_uuid = "[0-9a-f]{8}-[0-9a-f]{4}-[1-5][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}"
}

resource "kong_route" "route-register-user" {
  protocols = [ "http", "https" ]
  methods = [ "POST" ]
  hosts = [ "${var.api_gateway_host}" ]
  paths = [ "/users$" ]
  # Strip the matching prefix from the upstream request URL
  strip_path = false
  # Use the request Host header in the upstream request headers
  preserve_host = false
  service_id = "${kong_service.service-user.id}"
}

resource "kong_route" "route-show-me" {
  protocols = [ "http", "https" ]
  methods = [ "GET" ]
  hosts = [ "${var.api_gateway_host}" ]
  paths = [ "/users/me$" ]
  # Strip the matching prefix from the upstream request URL
  strip_path = false
  # Use the request Host header in the upstream request headers
  preserve_host = false
  service_id = "${kong_service.service-user.id}"
}

resource "kong_route" "route-logout-user" {
  protocols = [ "http", "https" ]
  methods = [ "DELETE" ]
  hosts = [ "${var.api_gateway_host}" ]
  paths = [ "/auth$" ]
  # Strip the matching prefix from the upstream request URL
  strip_path = false
  # Use the request Host header in the upstream request headers
  preserve_host = false
  service_id = "${kong_service.service-user.id}"
}

resource "kong_route" "route-auth-local" {
  protocols = [ "http", "https" ]
  methods = [ "POST" ]
  hosts = [ "${var.api_gateway_host}" ]
  paths = [ "/auth/local$" ]
  # Strip the matching prefix from the upstream request URL
  strip_path = false
  # Use the request Host header in the upstream request headers
  preserve_host = false
  service_id = "${kong_service.service-user.id}"
}

resource "kong_route" "route-create-todo" {
  protocols = [ "http", "https" ]
  methods = [ "POST" ]
  hosts = [ "${var.api_gateway_host}" ]
  paths = [ "/todos$" ]
  # Strip the matching prefix from the upstream request URL
  strip_path = false
  # Use the request Host header in the upstream request headers
  preserve_host = false
  service_id = "${kong_service.service-todo.id}"
}

resource "kong_route" "route-list-todos" {
  protocols = [ "http", "https" ]
  methods = [ "GET" ]
  hosts = [ "${var.api_gateway_host}" ]
  paths = [ "/todos$" ]
  # Strip the matching prefix from the upstream request URL
  strip_path = false
  # Use the request Host header in the upstream request headers
  preserve_host = false
  service_id = "${kong_service.service-todo.id}"
}

resource "kong_route" "route-show-todo" {
  protocols = [ "http", "https" ]
  methods = [ "GET" ]
  hosts = [ "${var.api_gateway_host}" ]
  paths = [ "/todos/(?P<txid>${local.regex_uuid})$" ]
  # Strip the matching prefix from the upstream request URL
  strip_path = false
  # Use the request Host header in the upstream request headers
  preserve_host = false
  service_id = "${kong_service.service-todo.id}"
}

resource "kong_route" "route-update-todo" {
  protocols = [ "http", "https" ]
  methods = [ "PATCH" ]
  hosts = [ "${var.api_gateway_host}" ]
  paths = [ "/todos/(?P<txid>${local.regex_uuid})$" ]
  # Strip the matching prefix from the upstream request URL
  strip_path = false
  # Use the request Host header in the upstream request headers
  preserve_host = false
  service_id = "${kong_service.service-todo.id}"
}

resource "kong_route" "route-delete-todo" {
  protocols = [ "http", "https" ]
  methods = [ "DELETE" ]
  hosts = [ "${var.api_gateway_host}" ]
  paths = [ "/todos/(?P<txid>${local.regex_uuid})$" ]
  # Strip the matching prefix from the upstream request URL
  strip_path = false
  # Use the request Host header in the upstream request headers
  preserve_host = false
  service_id = "${kong_service.service-todo.id}"
}

# 404 Not Found
# Send traffic to a special service or apply any plugin
resource "kong_route" "route-fallback" {
  protocols = [ "http", "https" ]
  hosts = [ "${var.api_gateway_host}" ]
  paths = [ "/" ]
  service_id = "${kong_service.service-fallback.id}"
}
