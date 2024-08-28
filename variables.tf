variable "region" {
  default     = "us-east-1"
  description = "AWS region"
}

variable "db_password" {
  description = "RDS root user password"
  type        = string
}

variable "db_user" {
  type        = string
  description = "RDS user"
  sensitive   = true
}