#This Module Will Creating the IAM readonly policy

module "module-admin-user" {
source = "../modules/module-admin-user/"

admin-username = ["PucTest", "LtiTest"]
}
