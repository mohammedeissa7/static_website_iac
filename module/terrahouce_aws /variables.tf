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


variable "content_version" {
  description = "The content version. Should be a positive integer starting at 1."
  type        = number

  validation {
    condition     = var.content_version > 0 && floor(var.content_version) == var.content_version
    error_message = "The content_version must be a positive integer starting at 1."
  }
}


