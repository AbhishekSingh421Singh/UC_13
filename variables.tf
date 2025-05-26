variable "lambda_zip_path" {
  default = "./lambda_function.zip"
}

variable "function_name" {
  default = "lambda_hello"
}

variable "handler" {
  default = "app.lambda_handler"
}

variable "runtime" {
  default = "python3.8"
}

variable "environment_variables" {
  type    = map(string)
  default = {}
}

variable "lambda_role_name" {
  default = "lambda_role"
}

variable "user_pool_name" {
  default = "hello_user_pool"
}

variable "app_client_name" {
  default = "hello_app_client"
}

variable "domain_prefix" {
  default = "firstexample-abhishek-2025"
}


variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}