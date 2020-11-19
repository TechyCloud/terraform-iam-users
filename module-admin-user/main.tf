#This code will create the IAM users
resource "aws_iam_user" "admin-users" {
  count = "${length(var.admin-username)}"
  name = "${element(var.admin-username,count.index )}"
}

#This code will attache admin access to users
resource "aws_iam_user_policy_attachment" "admin-policy" {
 count = "${length(var.admin-username)}"
 user = "${element(aws_iam_user.admin-users.*.name,count.index )}"
 policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
