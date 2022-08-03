resource "aws_iam_user" "multiple_iam_users" {
  count = length(var.user_names)
  name = var.user_names[count.index]
}