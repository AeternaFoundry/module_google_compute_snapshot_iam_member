variable "compute_snapshot_iam_members" {
  description = <<EOT
Map of compute_snapshot_iam_members, attributes below
Required:
    - member
    - name
    - role
Optional:
    - project
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    member  = string
    name    = string
    role    = string
    project = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

