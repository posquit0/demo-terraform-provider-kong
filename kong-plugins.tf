# resource "kong_plugin" "plugin-rate-limit" {
#   name = "response-rate-limiting"
#   config = {
#     limits.sms.minute = 10
#   }
# }

# Correlate requests and responses using a unique ID transmitted over an HTTP header
resource "kong_plugin" "plugin-global-correlation-id" {
  name = "correlation-id"

  config = {
    # The HTTP header name to use for the correlation ID
    header_name = "X-Request-ID"
    # The generator to use for the correlation ID
    generator = "uuid"
    # Whether to echo the header back to the client
    echo_downstream = "true"
  }
}

# Detect and block bots or custom clients
resource "kong_plugin" "plugin-global-bot-detection" {
  name = "bot-detection"

  config = {
    # A comma separated array of regular expressions
    # The regular expressions will be checked against the User-Agent header
    whitelist = ""
    blacklist = ""
  }
}

# Allow developers to make requests from the browser
resource "kong_plugin" "plugin-global-cors" {
  name = "cors"

  config = {
    # A comma-separated list of allowed domains for the `Access-Control-Allow-Origin` header
    # TODO: Restrict origins
    origins = "*"
    # A comma-separated list of allowed methods for the `Access-Control-Allow-Methods` header
    methods = "GET,POST,PUT,PATCH,DELETE"
    # A comma-separated list of allowed request headers for the `Access-Control-Request-Headers` header
    headers = "Content-Type,Authorization"
    # A comma-separated list of allowed response headers for the `Access-Control-Expose-Headers` header
    exposed_headers = "Content-Length,Date,X-Request-ID"
    # Determine whether the `Access-Control-Allow-Credentials` header should be sent with true as the value
    credentials = "true"
    # How long the results of the preflight request can be cached in seconds
    max_age = 3600
    # Proxy `OPTIONS` preflight request to the upstream service
    preflight_continue = "false"
  }
}
