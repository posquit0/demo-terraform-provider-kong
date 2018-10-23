resource "kong_consumer" "consumer-anonymous" {
  username = "anonymous"
}

resource "kong_consumer" "consumer-user" {
  username = "user"
  # Map to an existing unique ID for the user
  custom_id = "123"
}

resource "kong_consumer" "consumer-admin" {
  username = "admin"
  # Map to an existing unique ID for the user
  custom_id = "1"
}
