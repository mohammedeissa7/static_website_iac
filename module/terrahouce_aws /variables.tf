variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string

  validation {
    condition     = (
      length(var.bucket_name) >= 3 && length(var.bucket_name) <= 63 && 
      can(regex("^[a-z0-9][a-z0-9-.]*[a-z0-9]$", var.bucket_name))
    )
    error_message = "The bucket name must be between 3 and 63 characters, start and end with a lowercase letter or number, and can contain only lowercase letters, numbers, hyphens, and dots."
  }
}

variable "index_html_filepath" {
  description = "the full path to the index"
  type        = string
  validation {
    condition = fileexists(var.index_html_filepath)
    error_message = "The specified index HTML file does not exist." 
  }
  
}
variable "error_html_filepath" {
  description = "the full path to the error"
  type        = string
  validation {
    condition = fileexists(var.error_html_filepath)
    error_message = "The specified error HTML file does not exist." 
  }
  
}
