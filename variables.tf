variable "aws_region" {
  description = "The AWS region to deploy the Lambda function in."
  type        = string
}

variable "lambda_function_name" {
  description = "The name of the Lambda function."
  type        = string
}

variable "lambda_handler" {
  description = "The function entry point in the code."
  type        = string
}

variable "lambda_runtime" {
  description = "The runtime environment for the Lambda function."
  type        = string
}

variable "architectures" {
  description = "The architectures for the Lambda function."
  type        = list(string)
}

variable "lambda_memory_size" {
  description = "The amount of memory available to the function at runtime."
  type        = number
}

variable "lambda_timeout" {
  description = "The amount of time that Lambda allows a function to run before stopping it."
  type        = number
}

variable "lambda_role_arn" {
  description = "The ARN of the IAM role that Lambda assumes when it executes your function."
  type        = string
}

variable "lambda_function_url_auth_type" {
  description = "The auth type for the Lambda Function URL. Valid values: NONE, AWS_IAM."
  type        = string
}

variable "filename" {
  description = "This is the filename"
  type = string
}

variable "environment_variables" {
  description = "Environment variables for the Lambda function."
  type        = map(string)
}
