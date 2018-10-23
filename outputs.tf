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
      kong_service.service-todo.name,
      kong_service.service-todo.protocol,
      kong_service.service-todo.host,
      kong_service.service-todo.port,
      kong_service.service-todo.path
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
      kong_route.route-create-todo.methods,
      kong_route.route-create-todo.paths.0
    )}",
    "${formatlist(
      "%-8s  %s",
      kong_route.route-list-todos.methods,
      kong_route.route-list-todos.paths.0
    )}",
    "${formatlist(
      "%-8s  %s",
      kong_route.route-show-todo.methods,
      kong_route.route-show-todo.paths.0
    )}",
    "${formatlist(
      "%-8s  %s",
      kong_route.route-update-todo.methods,
      kong_route.route-update-todo.paths.0
    )}",
    "${formatlist(
      "%-8s  %s",
      kong_route.route-delete-todo.methods,
      kong_route.route-delete-todo.paths.0
    )}"
  ]
}
