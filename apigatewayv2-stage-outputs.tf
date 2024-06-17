output "id" {
    value = aws_apigatewayv2_stage.general.id
    description = "The ID of stage"
}

output "invoke_url" {
    value = aws_apigatewayv2_stage.general.invoke_url
    description = "The URL to invoke the API pointing to the stage, e.g. wss://z4675bid1j.execute-api.eu-west-2.amazonaws.com/example-stage, or https://z4675bid1j.execute-api.eu-west-2.amazonaws.com/"
}

output "tags_all" {
    value = aws_apigatewayv2_stage.general.tags_all
    description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "execution_arn" {
    value = aws_apigatewayv2_stage.general.execution_arn
    description = "The ARN prefix to be used in an aws_lambda_permissions source_arn attribute. For WebSocket APIs this attribute can additionally be used in an aws_iam_policy to authorize access to the @connections API. See the Amazon API Gateway Developer Guide for details."
}

output "arn" {
    value = aws_apigatewayv2_stage.general.arn
    description = "The ARN of the stage."
}
