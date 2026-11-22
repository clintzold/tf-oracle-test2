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


# Compartment variables
variable "compartment_name" {
  type        = string
  description = "Variable for compartment name passed in env (e.g., 'ldap_relay_dev' or 'ldap_relay_prod')"
}

variable "allow_delete_compartment" {
  type    = bool
  default = true
}

variable "parent_compartment_ocid" {
  type        = string
  description = "OCID of parent compartment (use tenancy_ocid if using root!)"
}


# VCN configuration variables
variable "vcn_cidr_blocks" {
  type        = list(string)
  description = "List of IPv4 blocks for the VCN"
  default     = ["10.0.0.0/16"]

  validation {
    condition     = alltrue([for cidr in var.vcn_cidr_blocks : can(cidrhost(cidr, 0))])
    error_message = "All entries in vcn_cidr_blocks must be in valid IPv4 CIDR notation"
  }
}

variable "vcn_display_name" {
  type        = string
  description = "Name of VCN displayed in OCI"
}

variable "vcn_dns_label" {
  type        = string
  description = "Label for OCI's built-in internal DNS resolution for compute instances"
}
