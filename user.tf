resource "aws_iam_user" "newusers" {
  count = length(var.username)
  name  = element(var.username, count.index)
}
