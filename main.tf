resource "aws_iam_user" "users" {
for_each = toset(var.users)
name = each. key
path = "/"
}
variable "users" {
    type = list(string)
}
output "username" {
    value = [for user in aws_aws_iam_user.users: user.name] 
}
