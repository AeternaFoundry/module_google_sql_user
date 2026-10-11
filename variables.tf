variable "sql_users" {
  description = <<EOT
Map of sql_users, attributes below
Required:
    - instance
    - name
Optional:
    - database_roles
    - deletion_policy
    - host
    - password
    - password_wo
    - password_wo_version
    - project
    - type
    - password_policy (block):
        - allowed_failed_attempts (optional)
        - enable_failed_attempts_check (optional)
        - enable_password_verification (optional)
        - password_expiration_duration (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    instance            = string
    name                = string
    database_roles      = optional(list(string))
    deletion_policy     = optional(string)
    host                = optional(string)
    password            = optional(string)
    password_wo         = optional(string)
    password_wo_version = optional(number)
    project             = optional(string)
    type                = optional(string)
    password_policy = optional(object({
      allowed_failed_attempts      = optional(number)
      enable_failed_attempts_check = optional(bool)
      enable_password_verification = optional(bool)
      password_expiration_duration = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

