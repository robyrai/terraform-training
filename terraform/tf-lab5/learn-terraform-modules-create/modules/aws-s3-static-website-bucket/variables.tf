variable "bucket_name" {
  description = "Name of S3 bucket. Must be unique"
  type        = string
}

variable "tags" {
  type        = map(string)
  description = "Tags to set on bucket."
  default     = {}
}