data "oci_jms_task_schedules" "jms_task_schedules_lookup" {
  for_each = var.jms_task_schedules_lookup

  fleet_id                    = each.value.fleet_id
  managed_instance_id         = each.value.managed_instance_id
  name                        = each.value.name
  task_schedule_name_contains = each.value.task_schedule_name_contains

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

