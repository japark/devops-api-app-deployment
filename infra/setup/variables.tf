variable "tf_state_bucket" {
  description = "Name of S3 bucket in AWS for storing tf state"
  default     = "jasonp-devops-deploy-bucket"
}

variable "tf_state_lock_table" {
  description = "Name of the DynamoDB table for tf state locking"
  default     = "devops-deploy-tf-lock"
}

variable "project" {
  description = "Project name for tagging resources"
  default     = "recipe-app-api"
}

variable "contact" {
  description = "Contact name for tagging resources"
  default     = "parkjason91@gmail.com"
}
