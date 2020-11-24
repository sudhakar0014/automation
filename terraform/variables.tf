variable "KeyName" {
  description = "KeyPair Name"
  type        = string
  default     = "test-surewaves"
}

variable "Instance_Type" {
  description = "Type of instance which we wanna use "
  type        = string
  default     = "t2.micro"
}
variable "subnet_id" {
  description = "subnet id  to be used for the instance"
  type        = string
  default     = "subnet-071de89d7a6fb816b"
}

variable "Vpc_Id" {
  description = "VPC ID  to be  used for the instance"
  type        = string
  default     = "vpc-02bfe99e38785f530"
}
variable "ami_id" {
  description = "ID of AMI to use for the instance"
  type        = string
  default     = "ami-0a4a70bd98c6d6441"
}

variable "Name"{
description = "Instance Name"
  type        = string
  default     = "JSF"

}
