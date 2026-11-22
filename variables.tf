# OCI Provider block variables

variable "tenancy_ocid" {
  type        = string
  description = "Oracle tenancy id"
}

variable "user_ocid" {
  type        = string
  description = "Oracle user id"
}

variable "fingerprint" {
  type        = string
  description = "value"
}

variable "private_key_path" {
  type        = string
  description = "Path to secret key"
  default     = null
}

variable "private_key" {
  type        = string
  description = "Encrypted secret key"
  default     = null
  sensitive   = true
}

variable "region" {
  type        = string
  description = "Tenancy region (e.g., ca-toronto-1)"
  default     = "ca-toronto-1"
}
