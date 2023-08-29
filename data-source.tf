provider "grafana" {
  url  = var.stack_url
  auth = var.stack_management_token
  cloud_api_key = var.grafana_admin_api_key
}

resource "grafana_data_source" "prometheus" {
  type                = "prometheus"
  name                = "cohort-prometheus"
  url                 = "http://${var.prometheus_endpoint}"
  is_default          = true
  basic_auth_enabled  = true
  basic_auth_username = "admin"
  uid                 = "pe-prometheus-datasource"

  json_data_encoded = jsonencode({
    manageAlerts = false
  })
  secure_json_data_encoded = jsonencode({
    basicAuthPassword = var.prometheus_password
  })
}

resource "grafana_cloud_plugin_installation" "github" {
  stack_slug = var.stack_slug
  slug       = "grafana-github-datasource"
  version    = "1.4.7"
}

resource "grafana_data_source" "github-datasource" {
  type = "grafana-github-datasource"
  name = "twks-cohort -datasource"

  json_data_encoded = jsonencode({
    "organization"       = "twks-cohort"
  })

  secure_json_data_encoded = jsonencode({
    "accessToken" = var.github_pat
  })
}
