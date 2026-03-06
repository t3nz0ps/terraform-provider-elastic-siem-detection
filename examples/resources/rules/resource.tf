resource "elastic-siem-detection_detection_rule" "kibana_security_rules" {
  for_each     = { for f in fileset(path.module, "*.yml") : f => file("${path.module}/${f}") }
  rule_content = jsonencode(yamldecode(each.value))

  # Helps syncing between objects
  depends_on = [elastic-siem-detection_exception_container.exception_lists]
}
