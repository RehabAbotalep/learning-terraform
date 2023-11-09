output "iam_arn" {
  value = aws_iam_user.lb[*].arn
}

output "iam_names" {
  value = aws_iam_user.lb[*].name
}