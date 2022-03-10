# Copyright (c) 2021 Oracle and/or its affiliates.
# All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl
# system.tfvars
#
# Purpose: The following script defines the system particular variables to provision environment


######################################## PROVIDER SPECIFIC VARIABLES ######################################
tenancy_ocid     = "ocid1.tenancy.oc1..foobarbar"
region           = "re-region-1"
user_ocid        = "ocid1.user.oc1..foobarbar"
fingerprint      = "fo:oo:ba:ar:ba:ar"
private_key_path = "/foo/bar/path/oci_api_key.pem"
######################################## PROVIDER SPECIFIC VARIABLES ######################################

######################################## mainbizcomp SPECIFIC VARIABLES ######################################
mainbizcomp_is_root_parent          = true
mainbizcomp_root_compartment_ocid   = "ocid1.tenancy.oc1..foobar"
mainbizcomp_compartment_name        = "MAIN_COMPARTMENT_04"
mainbizcomp_compartment_description = "Terraform created Main Business Compartment"
mainbizcomp_enable_delete           = true
######################################## mainbizcomp SPECIFIC VARIABLES ######################################


######################################## hub01 SPECIFIC VARIABLES ######################################
hub01_compartment_name        = "HUB01_04"
hub01_compartment_description = "Terraform created HUB Compartment"
hub01_enable_delete           = true
######################################## hub01 SPECIFIC VARIABLES ######################################
######################################## hub01 Artifact SPECIFIC VARIABLES ######################################
hub01_artifacts_compartment_name        = "HUB01_ARTIFACTS_04"
hub01_artifacts_compartment_description = "Terraform created HUB Artifact Compartment"
hub01_artifacts_enable_delete           = true
######################################## hub01 Artifact SPECIFIC VARIABLES ######################################
######################################## hub01 Network SPECIFIC VARIABLES ######################################
hub01_network_compartment_name        = "HUB01_NETWORK_04"
hub01_network_compartment_description = "Terraform created HUB Network Compartment"
hub01_network_enable_delete           = true
######################################## hub01 Network SPECIFIC VARIABLES ######################################

######################################## prd01 SPECIFIC VARIABLES ######################################
prd01_compartment_name        = "PRD01_04"
prd01_compartment_description = "Terraform created prd01 Compartment"
prd01_enable_delete           = true
######################################## prd01 SPECIFIC VARIABLES ######################################
######################################## prd01 Artifact SPECIFIC VARIABLES ######################################
prd01_artifacts_compartment_name        = "PRD01_ARTIFACTS_04"
prd01_artifacts_compartment_description = "Terraform created prd01 Artifact Compartment"
prd01_artifacts_enable_delete           = true
######################################## prd01 Artifact SPECIFIC VARIABLES ######################################
######################################## prd01 Network SPECIFIC VARIABLES ######################################
prd01_network_compartment_name        = "PRD01_NETWORK_04"
prd01_network_compartment_description = "Terraform created prd01 Network Compartment"
prd01_network_enable_delete           = true
######################################## prd01 Network SPECIFIC VARIABLES ######################################

######################################## qa01 SPECIFIC VARIABLES ######################################
qa01_compartment_name        = "QA01_04"
qa01_compartment_description = "Terraform created qa01 Compartment"
qa01_enable_delete           = true
######################################## qa01 SPECIFIC VARIABLES ######################################
######################################## qa01 Artifact SPECIFIC VARIABLES ######################################
qa01_artifacts_compartment_name        = "QA01_ARTIFACTS_04"
qa01_artifacts_compartment_description = "Terraform created qa01 Artifact Compartment"
qa01_artifacts_enable_delete           = true
######################################## qa01 Artifact SPECIFIC VARIABLES ######################################
######################################## qa01 Network SPECIFIC VARIABLES ######################################
qa01_network_compartment_name        = "QA01_NETWORK_04"
qa01_network_compartment_description = "Terraform created qa01 Network Compartment"
qa01_network_enable_delete           = true
######################################## qa01 Network SPECIFIC VARIABLES ######################################

######################################## hom01 SPECIFIC VARIABLES ######################################
hom01_compartment_name        = "HOM01_04"
hom01_compartment_description = "Terraform created hom01 Compartment"
hom01_enable_delete           = true
######################################## hom01 SPECIFIC VARIABLES ######################################
######################################## hom01 Artifact SPECIFIC VARIABLES ######################################
hom01_artifacts_compartment_name        = "HOM01_ARTIFACTS_04"
hom01_artifacts_compartment_description = "Terraform created hom01 Artifact Compartment"
hom01_artifacts_enable_delete           = true
######################################## hom01 Artifact SPECIFIC VARIABLES ######################################
######################################## hom01 Network SPECIFIC VARIABLES ######################################
hom01_network_compartment_name        = "HOM01_NETWORK_04"
hom01_network_compartment_description = "Terraform created hom01 Network Compartment"
hom01_network_enable_delete           = true
######################################## hom01 Network SPECIFIC VARIABLES ######################################

######################################## dev01 SPECIFIC VARIABLES ######################################
dev01_compartment_name        = "DEV01_04"
dev01_compartment_description = "Terraform created dev01 Compartment"
dev01_enable_delete           = true
######################################## dev01 SPECIFIC VARIABLES ######################################
######################################## dev01 Artifact SPECIFIC VARIABLES ######################################
dev01_artifacts_compartment_name        = "DEV01_ARTIFACTS_04"
dev01_artifacts_compartment_description = "Terraform created dev01 Artifact Compartment"
dev01_artifacts_enable_delete           = true
######################################## dev01 Artifact SPECIFIC VARIABLES ######################################
######################################## dev01 Network SPECIFIC VARIABLES ######################################
dev01_network_compartment_name        = "DEV01_NETWORK_04"
dev01_network_compartment_description = "Terraform created dev01 Network Compartment"
dev01_network_enable_delete           = true
######################################## dev01 Network SPECIFIC VARIABLES ######################################

######################################## sbx01 SPECIFIC VARIABLES ######################################
sbx01_compartment_name        = "SBX01_04"
sbx01_compartment_description = "Terraform created sbx01 Compartment"
sbx01_enable_delete           = true
######################################## sbx01 SPECIFIC VARIABLES ######################################
######################################## sbx01 Artifact SPECIFIC VARIABLES ######################################
sbx01_artifacts_compartment_name        = "SBX01_ARTIFACTS_04"
sbx01_artifacts_compartment_description = "Terraform created sbx01 Artifact Compartment"
sbx01_artifacts_enable_delete           = true
######################################## sbx01 Artifact SPECIFIC VARIABLES ######################################
######################################## sbx01 Network SPECIFIC VARIABLES ######################################
sbx01_network_compartment_name        = "SBX01_NETWORK_04"
sbx01_network_compartment_description = "Terraform created sbx01 Network Compartment"
sbx01_network_enable_delete           = true
######################################## sbx01 Network SPECIFIC VARIABLES ######################################