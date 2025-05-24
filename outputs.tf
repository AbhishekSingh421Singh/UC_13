# REST API endpoint
output "rest_api_url" {
  value = "https://${aws_api_gateway_rest_api.this.id}.execute-api.${var.aws_region}.amazonaws.com/prod/hello"
}

# Cognito outputs
output "user_pool_id" {
  value = aws_cognito_user_pool.this.id
}

output "user_pool_arn" {
  value = aws_cognito_user_pool.this.arn
}

output "client_id" {
  value = aws_cognito_user_pool_client.client.id
}

# Lambda outputs
output "role_arn" {
  value = aws_iam_role.lambda_exec_role.arn
}

output "lambda_name" {
  value = aws_lambda_function.this.function_name
}

output "lambda_function_arn" {
  value = aws_lambda_function.this.arn
}