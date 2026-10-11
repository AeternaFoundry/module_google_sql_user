output "sql_users_id" {
  description = "Map of id values across all sql_users, keyed the same as var.sql_users except keys with no id are omitted"
  value       = { for k, v in google_sql_user.sql_users : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sql_users_database_roles" {
  description = "Map of database_roles values across all sql_users, keyed the same as var.sql_users except keys with no database_roles are omitted"
  value       = { for k, v in google_sql_user.sql_users : k => v.database_roles if v.database_roles != null && length(v.database_roles) > 0 }
}
output "sql_users_deletion_policy" {
  description = "Map of deletion_policy values across all sql_users, keyed the same as var.sql_users except keys with no deletion_policy are omitted"
  value       = { for k, v in google_sql_user.sql_users : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "sql_users_host" {
  description = "Map of host values across all sql_users, keyed the same as var.sql_users except keys with no host are omitted"
  value       = { for k, v in google_sql_user.sql_users : k => v.host if v.host != null && length(v.host) > 0 }
}
output "sql_users_iam_email" {
  description = "Map of iam_email values across all sql_users, keyed the same as var.sql_users except keys with no iam_email are omitted"
  value       = { for k, v in google_sql_user.sql_users : k => v.iam_email if v.iam_email != null && length(v.iam_email) > 0 }
}
output "sql_users_instance" {
  description = "Map of instance values across all sql_users, keyed the same as var.sql_users except keys with no instance are omitted"
  value       = { for k, v in google_sql_user.sql_users : k => v.instance if v.instance != null && length(v.instance) > 0 }
}
output "sql_users_name" {
  description = "Map of name values across all sql_users, keyed the same as var.sql_users except keys with no name are omitted"
  value       = { for k, v in google_sql_user.sql_users : k => v.name if v.name != null && length(v.name) > 0 }
}
output "sql_users_password" {
  description = "Map of password values across all sql_users, keyed the same as var.sql_users except keys with no password are omitted"
  value       = { for k, v in google_sql_user.sql_users : k => v.password if v.password != null && length(v.password) > 0 }
  sensitive   = true
}
output "sql_users_password_policy" {
  description = "Map of password_policy values across all sql_users, keyed the same as var.sql_users except keys with no password_policy are omitted"
  value       = { for k, v in google_sql_user.sql_users : k => one(v.password_policy) if v.password_policy != null && length(v.password_policy) > 0 }
}
output "sql_users_password_wo_version" {
  description = "Map of password_wo_version values across all sql_users, keyed the same as var.sql_users except keys with no password_wo_version are omitted"
  value       = { for k, v in google_sql_user.sql_users : k => v.password_wo_version if v.password_wo_version != null }
}
output "sql_users_project" {
  description = "Map of project values across all sql_users, keyed the same as var.sql_users except keys with no project are omitted"
  value       = { for k, v in google_sql_user.sql_users : k => v.project if v.project != null && length(v.project) > 0 }
}
output "sql_users_sql_server_user_details" {
  description = "Map of sql_server_user_details values across all sql_users, keyed the same as var.sql_users except keys with no sql_server_user_details are omitted"
  value       = { for k, v in google_sql_user.sql_users : k => v.sql_server_user_details if v.sql_server_user_details != null && length(v.sql_server_user_details) > 0 }
}
output "sql_users_type" {
  description = "Map of type values across all sql_users, keyed the same as var.sql_users except keys with no type are omitted"
  value       = { for k, v in google_sql_user.sql_users : k => v.type if v.type != null && length(v.type) > 0 }
}

