resource "kong_service" "service-user" {
  name = "user-service"
  protocol = "http"
  host = "mockbin.com"
  port = 80
  path = "/request"
  retries = 5
  connect_timeout = "${10 * 1000}"
  write_timeout = "${5 * 1000}"
  read_timeout = "${5 * 1000}"
}

resource "kong_service" "service-item" {
  name = "item-service"
  protocol = "http"
  host = "mockbin.com"
  port = 80
  path = "/request"
  retries = 5
  connect_timeout = "${10 * 1000}"
  write_timeout = "${5 * 1000}"
  read_timeout = "${5 * 1000}"
}

resource "kong_service" "service-fallback" {
  name = "fallback-service"
  protocol = "http"
  host = "mockbin.com"
  port = 80
  path = "/request"
  retries = 5
  connect_timeout = "${10 * 1000}"
  write_timeout = "${5 * 1000}"
  read_timeout = "${5 * 1000}"
}
