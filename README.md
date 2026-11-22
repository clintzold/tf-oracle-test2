# Secure Access LDAP Relay in OCI
This is a second runthrough of building an airgapped VCN in OCI with Terraform.
The VCN will contain a subnet with a VM running a LDAP container, this subnet
is connected to an external app (or in this case my laptop) via an IPSec pipeline.

Access to the internet for pulling container images will be provided by a NAT
gateway allowing only outbound traffic. DRG controls whether traffic is passed
down the IPSec pipeline or sent to outbound internet traffic.

The biggest difference between the two is the flow of the CI/CD pipeline.

## The Pipeline
CI/CD will move in two stages: dev and prod.

Dev will have a manually triggered 'terraform destroy' workflow and 3 separate
jobs will handle staging the deployment, the final job after the Manual Review
being to deploy to prod.

  1. Plan Dev & Plan Prod
  2. Deploy Dev
  3. Deploy Prod
