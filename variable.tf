variable "environment" {
  type        = string
  description = "Deployment environment"
  default     = "dev"

  validation {
    condition = contains(
      ["dev", "qa", "prod"],
      var.environment
    )

    error_message = "Environment must be dev, qa, or prod."
  }
}
variable "aws_region" {
  type        = string
  description = "AWS region"
  default     = "ap-south-1"
}

variable "web_instance_count" {
  description = "Number of web application EC2 instances"
  type        = number
}