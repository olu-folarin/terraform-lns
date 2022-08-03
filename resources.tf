resource "aws_iam_user" "multiple_iam_users" {
#   count = length(var.user_names)
#   name = var.user_names[count.index]

# to get every unique value from the list
    for_each = tolist(var.user_names)
    user_name = each.value #gives u each value
}