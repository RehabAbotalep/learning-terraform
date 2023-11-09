output "arns" {
  value = aws_iam_user.lb[*].arn
}