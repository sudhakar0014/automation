This Folder Contains 3 Files excluding "ReadMe.txt" file.
1. keys.tf: It's a terrafor script which Holds the credentials of The AWS Account.

2.  Variables.tf: This is a terraform script which holds the variables which  can be used to configure 
      other terraform files.
      
1. ec2.tf:
    It's a Terraform script which creates two resources while using variables from "variabls.tf" file and 
    credentials from "keys.tf" file.
    1. EC2 instance (using variabls.tf file values) 
    2. Security Group (which allows 22 for ssh and 80 for nginx)