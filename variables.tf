variable "jms_task_schedules_lookup" {
  description = <<EOT
Map of jms_task_schedules_lookup, attributes below
Required:
    - fleet_id
Optional:
    - managed_instance_id
    - name
    - task_schedule_name_contains
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    fleet_id                    = string
    managed_instance_id         = optional(string)
    name                        = optional(string)
    task_schedule_name_contains = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

