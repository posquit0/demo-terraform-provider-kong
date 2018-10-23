output "services" {
  value = [
    "${format(
      "%-24s (%s://%s:%s%s)",
      kong_service.service-user.name,
      kong_service.service-user.protocol,
      kong_service.service-user.host,
      kong_service.service-user.port,
      kong_service.service-user.path
    )}",
    "${format(
      "%-24s (%s://%s:%s%s)",
      kong_service.service-item.name,
      kong_service.service-item.protocol,
      kong_service.service-item.host,
      kong_service.service-item.port,
      kong_service.service-item.path
    )}"
  ]
}

output "routes" {
  value = [
    "${formatlist(
      "%-8s  %s",
      kong_route.route-register-user.methods,
      kong_route.route-register-user.paths.0
    )}",
    "${formatlist(
      "%-8s  %s",
      kong_route.route-show-me.methods,
      kong_route.route-show-me.paths.0
    )}",
    "${formatlist(
      "%-8s  %s",
      kong_route.route-logout-user.methods,
      kong_route.route-logout-user.paths.0
    )}",
    "${formatlist(
      "%-8s  %s",
      kong_route.route-auth-local.methods,
      kong_route.route-auth-local.paths.0
    )}",
    "${formatlist(
      "%-8s  %s",
      kong_route.route-create-item.methods,
      kong_route.route-create-item.paths.0
    )}",
    "${formatlist(
      "%-8s  %s",
      kong_route.route-list-items.methods,
      kong_route.route-list-items.paths.0
    )}",
    "${formatlist(
      "%-8s  %s",
      kong_route.route-show-item.methods,
      kong_route.route-show-item.paths.0
    )}",
    "${formatlist(
      "%-8s  %s",
      kong_route.route-update-item.methods,
      kong_route.route-update-item.paths.0
    )}",
    "${formatlist(
      "%-8s  %s",
      kong_route.route-delete-item.methods,
      kong_route.route-delete-item.paths.0
    )}"
  ]
}
