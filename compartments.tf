resource "oci_identity_compartment" "this" {
  compartment_id = coalesce(var.parent_compartment_ocid, var.tenancy_ocid) # Allows for fallback parent at the root level as a default
  description    = "Compartment for applicatin resources (scoping of 'dev' and 'prod' environments)"
  name           = "ldap-${var.environment}-cmp"

  enable_delete = var.allow_delete_compartment
}
