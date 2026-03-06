resource "elastic-siem-detection_exception_item" "exception_items" {
  for_each               = { for f in fileset(path.module, "*.yml") : f => file("${path.module}/${f}") }
  exception_item_content = jsonencode(yamldecode(each.value))

  # Helps syncing between objects
  depends_on = [elastic-siem-detection_exception_container.exception_lists]
}
