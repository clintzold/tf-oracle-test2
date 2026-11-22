output "compartment_id" {
  description = "The OCID of the created compartment"
  value       = oci_identity_compartment.this.id
}

output "compartment_name" {
  description = "The name of the created compartment"
  value       = oci_identity_compartment.this.name
}

output "vcn_id" {
  description = "The OCID of the created VCN"
  value       = oci_core_vcn.this.id
}

output "vcn_cidr_blocks" {
  description = "The CIDR blocks range for the created VCN"
  value       = join(", ", oci_core_vcn.this.cidr_blocks)
}
