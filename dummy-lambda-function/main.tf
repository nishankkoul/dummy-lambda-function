provider "aws" {
  region = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_lambda_function" "dummy_lambda" {
  function_name     = var.lambda_function_name
  role              = aws_iam_role.lambda_exec_role.arn
  handler           = var.lambda_handler
  runtime           = var.lambda_runtime
  filename          = var.lambda_filename
  source_code_hash  = filebase64sha256(var.lambda_filename)

  environment {
    variables = var.lambda_environment_variables
  }
}

resource "aws_iam_role" "lambda_exec_role" {
  name = var.lambda_role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action    = "sts:AssumeRole",
      Effect    = "Allow",
      Principal = {
        Service = "lambda.amazonaws.com"
      }
    }]
  })
}

resource "aws_iam_role_policy_attachment" "lambda_exec_policy" {
  role       = aws_iam_role.lambda_exec_role.name
  policy_arn = var.lambda_policy_arn
}