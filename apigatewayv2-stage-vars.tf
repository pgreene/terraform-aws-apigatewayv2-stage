variable "api_id" {
    description = "(Required) The API identifier."
    default = null
}

variable "description" {
    description = "(Optional) Description of the stage"
    default = null
}

variable "deployment_id" {
    description = "(Optional) The deployment identifier of the stage. Use the aws_apigatewayv2_deployment resource to configure a deployment."
    default = null
}

variable "name" {
    description = "(Required) The name of the stage. Must be between 1 and 128 characters in length."
    default = null
}

variable "access_log_settings" {
    description = "(Optional) Enables access logs for the API stage. Detailed below."
    default = null
}

variable "default_route_settings" {
    description = "(Optional) The default route settings for the stage."
    default = null
}

variable "route_settings" {
    description = "(Optional) Route settings for the stage."
    default = null
}

variable "client_certificate_id" {
    description = "(Optional) The identifier of a client certificate for the stage."
    default = null
}

variable "stage_variables" {
    description = "(Optional) A map that defines the stage variables for the stage."
    default = null
}

variable "auto_deploy" {
    description = "(Optional) Whether updates to an API automatically trigger a new deployment. Defaults to false. Applicable for HTTP APIs."
    default = false
}

variable "tags" {
    description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
    default = null
}