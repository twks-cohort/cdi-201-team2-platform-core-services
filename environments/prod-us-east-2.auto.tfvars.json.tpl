{
    "org_name": "team2cdi201",
    "cluster_name": "prod-us-east-2",
    "team_name": "team2",
    "stack_slug": "team2201stack",
    "stack_url": "https://team2201stack.grafana.net",
    "stack_management_token": "{{ op://cohorts/team2-201-svc-grafana/team2201stack_management_sa_key }}",
    "prometheus_endpoint": "{{ op://cohorts/team2-201-platform-vcluster/prometheus_endpoint }}",
    "prometheus_password": "{{ op://cohorts/team2-201-platform-vcluster/prometheus_password }}",
    "node_exporter_port": "9102",
    "metrics_server_version": "v0.6.3",
    "prometheus_version": "v2.42.0",
    "grafana_agent_version": "v0.33.1",
    "alert_channel": "prod",
    "grafana_admin_api_key": "{{ op://cohorts/team2-201-svc-grafana/admin-api-key }}"
}
