region                     = "ap-south-1"
lambda_function_name       = "dummy_lambda_function"
lambda_role_name           = "lambda_exec_role"
lambda_handler             = "index.handler"
lambda_runtime             = "nodejs14.x"
lambda_filename            = "dummy-lambda.zip"
lambda_policy_arn          = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"

lambda_environment_variables = {
  key = "value"
}
