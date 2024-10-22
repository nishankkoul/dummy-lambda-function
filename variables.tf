variable "region" {
  description = "AWS Region"
  type = string
}

variable "access_key" {
  description = "Access Key Value"
  type = string
}

variable "secret_key" {
  description = "Access Key Value"
  type = string
}

variable "lambda_function_name" {
  description = "Name of the Lambda function"
  type        = string
}

variable "lambda_role_name" {
  description = "Name of the IAM Role for Lambda"
  type        = string
}

variable "lambda_handler" {
  description = "The Lambda function entry point"
  type        = string
}

variable "lambda_runtime" {
  description = "The Lambda runtime environment"
  type        = string
}

variable "lambda_filename" {
  description = "The Lambda deployment package file"
  type        = string
}

variable "lambda_environment_variables" {
  description = "A map of environment variables to set for the Lambda function"
  type        = map(string)
}

variable "lambda_policy_arn" {
  description = "ARN of the IAM policy to attach to Lambda role"
  type        = string
}

