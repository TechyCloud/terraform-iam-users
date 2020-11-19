# terraform-iam-users

In this article, We are going to use the Terraform to create the IAM users with Admin or ReadOnly privileges in AWS.

## Prerequisites
- Terraform v0.13.5
- AWS CLI
- IAM Access Key & Secret Key

## Usage

### IAM User with Admin Privilege

Download the Terraform code [here](https://github.com/TechyCloud/terraform-iam-users.git) to create the IAM user with Admin access.  

After downloaded the code you need to update the variables in **main.tf** file in **tf_adminuser** folder. 

You can add the one or more IAM users with admin access as a variable like the below on **main.tf** file.

> admin-username = ["User-01", "User-02"]

Now, The code is ready to create the IAM users after updating the variabls in **main.tf** file. 

You can run the below command to initialize the configuration before going to apply the changes in **tf_adminuser** directory.

> terraform init

Once succeed, You can run the below apply command to create the IAM users in console. For this step, Please keep it ready IAM user access and secret key to apply the changes.   

> terraform apply


### IAM User with ReadOnly Privilege

In the same configuraion directory, you need to update the variables in **main.tf** file in **tf_readonlyuser** folder. 

You can add the one or more IAM users with readonly access as a variable like the below on **main.tf** file.

> readonly-username = ["User-01", "User-02"]

Now, The code is ready to create the IAM users after updating the variabls in **main.tf** file. 

You can run the below command to initialize the configuration before going to apply the changes in **tf_readonlyuser** directory.

> terraform init

Once succeed, You can run the below apply command to create the IAM users in console. For this step, Please keep it ready IAM user access and secret key to apply the changes.   

> terraform apply


**!! Now, You have successfully create the IAM user with Admin & ReadOnly privileges with terraform !!**

###### Thanks for using this Block.
