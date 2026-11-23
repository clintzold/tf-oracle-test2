resource "oci_core_vcn" "this" {
  compartment_id = oci_identity_compartment.this.id
  cidr_blocks    = var.vcn_cidr_blocks
  display_name   = "ldap-${var.environment}-vcn"
  dns_label      = "ldap${var.environment}vcn"
}
