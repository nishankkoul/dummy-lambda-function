provider "aws" {
  region = var.aws_region
}

resource "aws_lambda_function" "my-lambda-function" {
  function_name    = var.lambda_function_name
  role             = var.lambda_role_arn
  handler          = var.lambda_handler
  runtime          = var.lambda_runtime
  architectures    = var.architectures
  memory_size      = var.lambda_memory_size
  timeout          = var.lambda_timeout
  filename         = var.filename
  source_code_hash = filebase64sha256("dummy-lambda.zip")

  environment {
    variables = var.environment_variables
  }
}

resource "aws_lambda_function_url" "lambda_function_url" {
  function_name       = aws_lambda_function.my-lambda-function.function_name  
  authorization_type  = var.lambda_function_url_auth_type
}
