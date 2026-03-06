resource "elastic-siem-detection_exception_container" "exception_lists" {
  for_each                    = { for f in fileset(path.module, "*.yml") : f => file("${path.module}/${f}") }
  exception_container_content = jsonencode(yamldecode(each.value))
}
