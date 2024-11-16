variable "env" {
  description = "Environment name."
  type        = string

}

variable "vpc_cidr_block" {
  description = "cdir block for vpc and subnets"
  type        = string
  default     = "10.0.0.0/16"
}

variable "azs" {
  description = "Availability zones for subnets."
  type        = list(string)
}

variable "private_subnets" {
  description = "CIDR ranges for private subnets."
  type        = list(string)
}
variable "public_subnets" {
  description = "CIDR ranges for public subnets."
  type        = list(string)
}
variable "private_subnets_tags" {
  description = "private subnets tags."
  type        = map(any)
}
variable "public_subnets_tags" {
  description = "public subnets tags."
  type        = map(any)
}