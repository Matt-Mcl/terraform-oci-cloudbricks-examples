# Copyright (c) 2021 Oracle and/or its affiliates.
# All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl
# provider.tf
#
# Purpose: The following file defines the providers used in this implementation

terraform {
  required_version = ">= 1.0.0"
}

provider "oci" {
  region               = var.region
  tenancy_ocid         = var.tenancy_ocid

  disable_auto_retries = "true"
}


provider "oci" {
  alias                = "home"
  region               = data.oci_identity_region_subscriptions.home_region_subscriptions.region_subscriptions[0].region_name
  tenancy_ocid         = var.tenancy_ocid

  disable_auto_retries = "true"
}
