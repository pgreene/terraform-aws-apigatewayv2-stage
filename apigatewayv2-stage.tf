resource "aws_apigatewayv2_stage" "general" {
  api_id = var.api_id
  name = var.name
  description = var.description
  deployment_id = var.deployment_id

  dynamic "access_log_settings" {
    for_each = var.access_log_settings == null ? [] : [var.access_log_settings]
    content {
      destination_arn = access_log_settings.value.destination_arn
      format = access_log_settings.value.format
    }
  }

  dynamic "default_route_settings" {
    for_each = var.default_route_settings == null ? [] : [var.default_route_settings]
    content {
      data_trace_enabled = default_route_settings.value.data_trace_enabled
      detailed_metrics_enabled = default_route_settings.value.detailed_metrics_enabled
      logging_level = default_route_settings.value.logging_level
      throttling_burst_limit = default_route_settings.value.throttling_burst_limit
      throttling_rate_limit = default_route_settings.value.throttling_rate_limit
    }
  }

  dynamic "route_settings" {
    for_each = var.route_settings == null ? [] : [var.route_settings]
    content {
      route_key = route_settings.value.route_key
      data_trace_enabled = route_settings.value.data_trace_enabled
      detailed_metrics_enabled = route_settings.value.detailed_metrics_enabled
      logging_level = route_settings.value.logging_level
      throttling_burst_limit = route_settings.value.throttling_burst_limit
      throttling_rate_limit = route_settings.value.throttling_rate_limit
    }
  }

  client_certificate_id = var.client_certificate_id
  stage_variables = var.stage_variables
  auto_deploy = var.auto_deploy
  
  tags = var.tags
}
