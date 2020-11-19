#This code will create the IAM users with Read only privilage
resource "aws_iam_user" "readonly-users" {
  count = "${length(var.readonly-username)}"
  name = "${element(var.readonly-username,count.index )}"
}

#This code will attache readonly access to users
resource "aws_iam_user_policy_attachment" "readonly-policy" {
 count = "${length(var.readonly-username)}"
 user = "${element(aws_iam_user.readonly-users.*.name,count.index )}"
 policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}
