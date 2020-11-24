variable "KeyName" {
  description = "KeyPair Name"
  type        = string
  default     = "Put your keyPair value here by which ansible can access new EC2 Instance"
}

variable "Instance_Type" {
  description = "Type of instance which we wanna use "
  type        = string
  default     = "t2.micro"
}
variable "subnet_id" {
  description = "subnet id  to be used for the instance"
  type        = string
  default     = "Subnet_ID in which you want to launch EC2 instance"
}

variable "Vpc_Id" {
  description = "VPC ID  to be  used for the instance"
  type        = string
  default     = "VPC Id in which Security Group will be placed"
}
variable "ami_id" {
  description = "ID of AMI to use for the instance"
  type        = string
  default     = "AmiId( I used ubuntu 18.04 for this automation)"
}

variable "Name"{
description = "Instance Name"
  type        = string
  default     = "Name of the Instance which  will be used by Security group also"

}
