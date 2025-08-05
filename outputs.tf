output "custom_role_id" {
  value       = local.custom-role-output
  description = "ID of the custom role created."
}

output "custom_role_name" {
  value       = (var.target_level == "project") ? google_project_iam_custom_role.project-custom-role[0].name : google_organization_iam_custom_role.org-custom-role[0].name
  description = "Name of the custom role created in the format {{target_level}}/{{target_id}}/roles/{{role_id}}, for use as a reference in other resources such as IAM role bindings."
}