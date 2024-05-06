variable "region" {
  description = "The region where your resources will be located"
  type        = string
  default     = "us-west-2"
}

variable "instance_type" {
  description = "The type of instance to launch"
  type        = string
  default     = "t2.micro"
}

variable "ami" {
  description = "The AMI to use for the instance"
  type        = string
  default     = "ami-0c55b159cbfafe1f0"
}

variable "key_name" {
  description = "The key pair to use for the instance"
  type        = string
  default     = "my-key-pair"
}

variable "subnet_id" {
  description = "The subnet to launch the instance in"
  type        = string
  default     = "subnet-0f9b2238"
}

variable "security_group_id" {
  description = "The security group to use for the instance"
  type        = string
  default     = "sg-test"
}

variable "instance_name" {
    description = "The name of the instance"
    type        = string
    default     = "my-instance"
}


variable "device_name" {
  description = "The device name for the EBS volume"
  type        = string
  default     = "/dev/sda1"
}

variable "volume_type" {
  description = "The type of volume"
  type        = string
  default     = "gp2"
}

variable "volume_size" {
  description = "The size of the volume in gibibytes (GiB)"
  type        = number
  default     = 8
}

variable "delete_on_termination" {
  description = "A boolean value indicating whether the volume should be deleted on instance termination"
  type        = bool
  default     = true
}