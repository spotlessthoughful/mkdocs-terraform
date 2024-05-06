variable "region" {
  description = "The region where resources should be created"
  type        = string
  default     = "us-west-2"
}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0"
}

variable "enable_dns_support" {
  description = "Indicate if the DNS support should be enabled in the VPC"
  type        = bool
  default     = false
}

variable "enable_dns_hostnames" {
  description = "Indicate if the DNS hostnames should be enabled in the VPC"
  type        = bool
  default     = false
}


variable "vpc_name" {
  description = "The VPC name"
  type        = string
  default     = "MyVPC"
}

variable "public_subnet_cidr_block" {
  description = "The CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet_availability_zone" {
  description = "The availability zone for the public subnet"
  type        = string
  default     = "us-west-2a"
}

variable "map_public_ip_on_launch" {
  description = "Should the instances in the public subnet be associated with a public IP on launch"
  type        = bool
  default     = true
}

variable "public_subnet_name" {
  description = "The name for the public subnet"
  type        = string
  default     = "MyPublicSubnet"
}

variable "private_subnet_cidr_block" {
  description = "The CIDR block for the private subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "private_subnet_availability_zone" {
  description = "The availability zone for the private subnet"
  type        = string
  default     = "us-west-2b"
}

variable "private_subnet_name" {
  description = "The name for the private subnet"
  type        = string
  default     = "MyPrivateSubnet"
}