variable "region" {
  default     = "us-east-1"
  description = "AWS region"
}

variable "db_password" {
  description = "RDS root user password"
  type        = string
  default = "tech_passwd"
}

variable "db_user" {
  type        = string
  description = "RDS user"
  default = "tech"
}
