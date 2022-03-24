# Copyright (c) 2021 Oracle and/or its affiliates.
# All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl
# main.tf
#
# Purpose: Defines all the components related to environment


module "hub01_network" {
  # source  = "oracle-devrel/cloudbricks-network-artifacts/oci"
  # version = "2.0.1"
  source = "github.com/oraclecloudbricks/terraform-oci-cloudbricks-network-artifacts?ref=er-orm"
  ######################################## PROVIDER SPECIFIC VARIABLES ######################################
  tenancy_ocid     = var.tenancy_ocid
  region           = var.region
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  ######################################## PROVIDER SPECIFIC VARIABLES ######################################
  ######################################## ARTIFACT SPECIFIC VARIABLES ######################################
  vcn_network_compartment_name       = var.hub01_network_vcn_network_compartment_name
  vcn_cidr_blocks                    = var.hub01_network_vcn_cidr_blocks
  private_subnet_cidr_block_map      = var.hub01_network_private_subnet_cidr_block_map
  public_subnet_cidr_block_map       = var.hub01_network_public_subnet_cidr_block_map
  vcn_display_name                   = var.hub01_network_vcn_display_name
  dhcp_options_display_name          = var.hub01_network_dhcp_options_display_name
  custom_search_domain               = var.hub01_network_custom_search_domain
  private_route_table_display_name   = var.hub01_network_private_route_table_display_name
  public_route_table_display_name    = var.hub01_network_public_route_table_display_name
  private_security_list_display_name = var.hub01_network_private_security_list_display_name
  public_security_list_display_name  = var.hub01_network_public_security_list_display_name
  service_gateway_display_name       = var.hub01_network_service_gateway_display_name
  nat_gateway_display_name           = var.hub01_network_nat_gateway_display_name
  internet_gateway_display_name      = var.hub01_network_internet_gateway_display_name
  drg_display_name                   = var.hub01_network_drg_display_name
  peered_vcn_cidr_blocks             = var.hub01_network_peered_vcn_cidr_blocks
  is_spoke                           = var.hub01_network_is_spoke
  is_orm                             = var.hub01_is_orm
  ######################################## ARTIFACT SPECIFIC VARIABLES ######################################
}


module "prd01_network" {
  # source     = "oracle-devrel/cloudbricks-network-artifacts/oci"
  # version    = "2.0.1"
  source = "github.com/oraclecloudbricks/terraform-oci-cloudbricks-network-artifacts?ref=er-orm"
  depends_on = [module.hub01_network]
  ######################################## PROVIDER SPECIFIC VARIABLES ######################################
  tenancy_ocid     = var.tenancy_ocid
  region           = var.region
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  ######################################## PROVIDER SPECIFIC VARIABLES ######################################
  ######################################## ARTIFACT SPECIFIC VARIABLES ######################################
  vcn_network_compartment_name       = var.prd01_network_vcn_network_compartment_name
  vcn_cidr_blocks                    = var.prd01_network_vcn_cidr_blocks
  private_subnet_cidr_block_map      = var.prd01_network_private_subnet_cidr_block_map
  public_subnet_cidr_block_map       = var.prd01_network_public_subnet_cidr_block_map
  vcn_display_name                   = var.prd01_network_vcn_display_name
  dhcp_options_display_name          = var.prd01_network_dhcp_options_display_name
  custom_search_domain               = var.prd01_network_custom_search_domain
  private_route_table_display_name   = var.prd01_network_private_route_table_display_name
  public_route_table_display_name    = var.prd01_network_public_route_table_display_name
  private_security_list_display_name = var.prd01_network_private_security_list_display_name
  public_security_list_display_name  = var.prd01_network_public_security_list_display_name
  service_gateway_display_name       = var.prd01_network_service_gateway_display_name
  nat_gateway_display_name           = var.prd01_network_nat_gateway_display_name
  internet_gateway_display_name      = var.prd01_network_internet_gateway_display_name
  drg_display_name                   = module.hub01_network.dynamic_routing_gateway[0].display_name #var.hub01_network_drg_display_name
  hub_vcn_compartment_name           = module.hub01_network.vcn.compartment_id                      #var.hub01_network_vcn_network_compartment_name
  hub_vcn_display_name               = module.hub01_network.vcn.display_name
  is_spoke                           = var.prd01_network_is_spoke
  is_orm                             = var.prd01_is_orm
  ######################################## ARTIFACT SPECIFIC VARIABLES ######################################
}


module "dev01_network" {
  # source     = "oracle-devrel/cloudbricks-network-artifacts/oci"
  # version    = "2.0.1"
  source = "github.com/oraclecloudbricks/terraform-oci-cloudbricks-network-artifacts?ref=er-orm"
  depends_on = [module.hub01_network]
  ######################################## PROVIDER SPECIFIC VARIABLES ######################################
  tenancy_ocid     = var.tenancy_ocid
  region           = var.region
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  ######################################## PROVIDER SPECIFIC VARIABLES ######################################
  ######################################## ARTIFACT SPECIFIC VARIABLES ######################################
  vcn_network_compartment_name       = var.dev01_network_vcn_network_compartment_name
  vcn_cidr_blocks                    = var.dev01_network_vcn_cidr_blocks
  private_subnet_cidr_block_map      = var.dev01_network_private_subnet_cidr_block_map
  public_subnet_cidr_block_map       = var.dev01_network_public_subnet_cidr_block_map
  vcn_display_name                   = var.dev01_network_vcn_display_name
  dhcp_options_display_name          = var.dev01_network_dhcp_options_display_name
  custom_search_domain               = var.dev01_network_custom_search_domain
  private_route_table_display_name   = var.dev01_network_private_route_table_display_name
  public_route_table_display_name    = var.dev01_network_public_route_table_display_name
  private_security_list_display_name = var.dev01_network_private_security_list_display_name
  public_security_list_display_name  = var.dev01_network_public_security_list_display_name
  service_gateway_display_name       = var.dev01_network_service_gateway_display_name
  nat_gateway_display_name           = var.dev01_network_nat_gateway_display_name
  internet_gateway_display_name      = var.dev01_network_internet_gateway_display_name
  drg_display_name                   = module.hub01_network.dynamic_routing_gateway[0].display_name
  hub_vcn_compartment_name           = module.hub01_network.vcn.compartment_id
  hub_vcn_display_name               = module.hub01_network.vcn.display_name
  is_spoke                           = var.dev01_network_is_spoke
  is_orm                             = var.dev01_is_orm
  ######################################## ARTIFACT SPECIFIC VARIABLES ######################################
}
