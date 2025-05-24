output "api_endpoint" {
  value = aws_apigatewayv2_api.http_api.api_endpoint
}

output "api_id" {
  value = aws_apigatewayv2_api.http_api.id
}
output "user_pool_id" {
  value = aws_cognito_user_pool.this.id
}

output "user_pool_arn" {
  value = aws_cognito_user_pool.this.arn
}

output "client_id" {
  value = aws_cognito_user_pool_client.client.id
}
output "role_arn" {
  value = aws_iam_role.lambda_exec_role.arn
}
output "lambda_name" {
  value = aws_lambda_function.this.function_name
}

output "lambda_function_arn" {
  value = aws_lambda_function.this.arn
}