output "jms_task_schedules_lookup_id" {
  description = "Map of id values across all jms_task_schedules_lookup, keyed the same as var.jms_task_schedules_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_jms_task_schedules.jms_task_schedules_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "jms_task_schedules_lookup_filter" {
  description = "Map of filter values across all jms_task_schedules_lookup, keyed the same as var.jms_task_schedules_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_jms_task_schedules.jms_task_schedules_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "jms_task_schedules_lookup_fleet_id" {
  description = "Map of fleet_id values across all jms_task_schedules_lookup, keyed the same as var.jms_task_schedules_lookup except keys with no fleet_id are omitted"
  value       = { for k, v in data.oci_jms_task_schedules.jms_task_schedules_lookup : k => v.fleet_id if v.fleet_id != null && length(v.fleet_id) > 0 }
}
output "jms_task_schedules_lookup_managed_instance_id" {
  description = "Map of managed_instance_id values across all jms_task_schedules_lookup, keyed the same as var.jms_task_schedules_lookup except keys with no managed_instance_id are omitted"
  value       = { for k, v in data.oci_jms_task_schedules.jms_task_schedules_lookup : k => v.managed_instance_id if v.managed_instance_id != null && length(v.managed_instance_id) > 0 }
}
output "jms_task_schedules_lookup_name" {
  description = "Map of name values across all jms_task_schedules_lookup, keyed the same as var.jms_task_schedules_lookup except keys with no name are omitted"
  value       = { for k, v in data.oci_jms_task_schedules.jms_task_schedules_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "jms_task_schedules_lookup_task_schedule_collection" {
  description = "Map of task_schedule_collection values across all jms_task_schedules_lookup, keyed the same as var.jms_task_schedules_lookup except keys with no task_schedule_collection are omitted"
  value       = { for k, v in data.oci_jms_task_schedules.jms_task_schedules_lookup : k => v.task_schedule_collection if v.task_schedule_collection != null && length(v.task_schedule_collection) > 0 }
}
output "jms_task_schedules_lookup_task_schedule_name_contains" {
  description = "Map of task_schedule_name_contains values across all jms_task_schedules_lookup, keyed the same as var.jms_task_schedules_lookup except keys with no task_schedule_name_contains are omitted"
  value       = { for k, v in data.oci_jms_task_schedules.jms_task_schedules_lookup : k => v.task_schedule_name_contains if v.task_schedule_name_contains != null && length(v.task_schedule_name_contains) > 0 }
}

