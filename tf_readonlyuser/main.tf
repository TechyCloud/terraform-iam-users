#This Module Will Creating the IAM readonly policy

module "module-readonly-user" {
source = "../modules/module-readonly-user/"

readonly-username = ["PucTest-read", "LtiTest-read"]
}
