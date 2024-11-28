module "sample_project_iam_bindings" {
    project_context = module.project_context
    member = "serviceAccount:rk-test@rkgroup-ts142iam.gserviceaccount.com"
    roles = [
        "roles/viewer"
    ]
}
