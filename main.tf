# provider "aws" {
 # access_key = "MY_AWS_ACCESS_KEY_ID"
 # secret_key = "MY_AWS_SECRET_ACCESS_KEY_ID"
 # region = "us-west-2"
# }

resource "aws_iam_group" "sysadmin" {
 name = "sysadmin"
 path = "/"
 }

resource "aws_iam_user" "sysadmin1" {
 name = "sysadmin1"
 path = "/users/"
}
resource "aws_iam_group_membership" "sysadmin1_membership" {
  name = aws_iam_user.sysadmin1.name
  users = [aws_iam_user.sysadmin1.name]
  group = aws_iam_group.sysadmin.name
}
# resource "aws_iam_group" "dbadmin" {
#  name = "dbadmin"
#  path = "/"
#  }

# resource "aws_iam_group" "monitor" {
#  name = "monitor"
#  path = "/"
#  }

# resource "aws_iam_user" "sysadmin2" {
#  name = "sysadmin2"
#  path = "/users/"
# }
# resource "aws_iam_user" "dbadmin1" {
#  name = "dbadmin1"
#  path = "/users/"
# }
# resource "aws_iam_user" "dbadmin2" {
#  name = "dbadmin2"
#  path = "/users/"
# }
# resource "aws_iam_user" "monitoruser1" {
#  name = "monitoruser1"
#  path = "/users/"
# }
# resource "aws_iam_user" "monitoruser2" {
#  name = "monitoruser2"
#  path = "/users/"
# }
# resource "aws_iam_user" "monitoruser3" {
#  name = "monitoruser3"
#  path = "/users/"
# }
# resource "aws_iam_user" "monitoruser4" {
#  name = "monitoruser4"
#  path = "/users/"
# }


#module "security-groups" {
 # source  = "app.terraform.io/tf-class-september-20/security-groups/aws"
  #version = "1.0.0"
  #vpc_id          = aws_vpc.vpc.id
  #security_groups = var.security_groups
#}

