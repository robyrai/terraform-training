# Input variable definitions
variable "vpc_name" {
  type        = string
  description = "name of the VPC"
  default     = "example-vpc"
}

variable "vpc_cidr" {
  type        = string
  description = "value of the ip range for VPC"
  default     = "10.0.0.0/16"
}

variable "vpc_azs" {
  type        = list(string)
  description = "the availabiity zones for VPC"
  default     = ["us-west-1b", "us-west-1c"]
}

variable "vpc_private_subnets" {
  type        = list(string)
  description = "the private subnets of the VPC"
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "vpc_public_subnets" {
  type        = list(string)
  description = "the public subnets of the VPC"
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "vpc_enable_nat_gateway" {
  type        = bool
  description = "should NAT gateway be enabled in VPC"
  default     = true
}

variable "vpc_tags" {
  type        = map(string)
  description = "tags to be used in the VPC"
  default = {
    Terraform   = "True"
    Environment = "dev"
  }
}