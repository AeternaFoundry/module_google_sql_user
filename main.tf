resource "google_sql_user" "sql_users" {
  for_each = var.sql_users

  instance            = each.value.instance
  name                = each.value.name
  database_roles      = each.value.database_roles
  deletion_policy     = each.value.deletion_policy
  host                = each.value.host
  password            = each.value.password
  password_wo         = each.value.password_wo
  password_wo_version = each.value.password_wo_version
  project             = each.value.project
  type                = each.value.type

  dynamic "password_policy" {
    for_each = each.value.password_policy != null ? [each.value.password_policy] : []
    content {
      allowed_failed_attempts      = password_policy.value.allowed_failed_attempts
      enable_failed_attempts_check = password_policy.value.enable_failed_attempts_check
      enable_password_verification = password_policy.value.enable_password_verification
      password_expiration_duration = password_policy.value.password_expiration_duration
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

