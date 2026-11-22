resource "oci_identity_compartment" "this" {
  compartment_id = var.parent_compartment_ocid
  description    = "Compartment for applicatin resources (scoping of 'dev' and 'prod' environments)"
  name           = var.compartment_name

  enable_delete = var.allow_delete_compartment
}
