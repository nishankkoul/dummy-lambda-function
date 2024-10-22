aws_region              = "ap-south-1"
lambda_function_name    = "my-lambda-function"
lambda_handler          = "index.js"
lambda_runtime          = "nodejs18.x"
architectures           = ["x86_64"]
lambda_memory_size      = 512
lambda_timeout          = 180
lambda_function_url_auth_type = "NONE"
lambda_role_arn         = "arn:aws:iam::160885289465:role/hello_world_lambda_role"
subnet_ids              = ["subnet-079b48dd58d6acda2"]  
security_group_ids      = ["sg-0312b16705e60e58c"]
filename                = "dummy-lambda.zip"

environment_variables = {
  NODE_ENV = "dev"
}
