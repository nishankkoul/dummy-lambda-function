output "lambda_function_name" {
  value = aws_lambda_function.my-lambda-function.function_name 
}

output "lambda_function_arn" {
  value = aws_lambda_function.my-lambda-function.arn 
}

output "lambda_function_url" {
  value = aws_lambda_function_url.lambda_function_url.function_url
}
