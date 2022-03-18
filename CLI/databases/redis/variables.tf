# Copyright (c) 2021 Oracle and/or its affiliates.
# All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl
# variables.tf
#
# Purpose: The following script declares all variables used in this frontend repository


/********** Provider Variables NOT OVERLOADABLE **********/
variable "region" {
  description = "Target region where artifacts are going to be created"
}

variable "tenancy_ocid" {
  description = "OCID of tenancy"
}

variable "user_ocid" {
  description = "User OCID in tenancy. Currently hardcoded to user denny.alquinta@oracle.com"
}

variable "fingerprint" {
  description = "API Key Fingerprint for user_ocid derived from public API Key imported in OCI User config"
}

variable "private_key_path" {
  description = "Private Key Absolute path location where terraform is executed"
}

/********** Provider Variables NOT OVERLOADABLE **********/

/********** Brick Variables **********/

variable "redis01_redis_master_name" {
  description = "The name given to the master instance"
}

variable "redis01_redis_master_shape" {
  description = "The shape for the master instance to use"
}

variable "redis01_redis_master_ad" {
  description = "The availability domain to provision the master instance in"
}

variable "redis01_redis_master_fd" {
  description = "The fault domain to provision the master instance in"
}

variable "redis01_redis_master_ocpus" {
  description = "The number of OCPUS for the master instance to use when flex shape is enabled"
  default     = ""
}

variable "redis01_redis_master_memory_in_gb" {
  description = "The amount of memory in GB for the master instance to use when flex shape is enabled"
  default     = ""
}

variable "redis01_redis_replica_name" {
  description = "The name given to the replica instances"
}

variable "redis01_redis_replica_count" {
  description = "The number of replica instances to provision"
  type        = number
}

variable "redis01_redis_replica_shape" {
  description = "The shape for the replica instances to use"
}

variable "redis01_redis_replica_ad_count" {
  description = "The number of availability domains to provision the replica instances in"
  default     = 3
}

variable "redis01_redis_replica_fd_count" {
  description = "The number of fault domains to provision the replica instances in"
  default     = 3
}

variable "redis01_redis_replica_ocpus" {
  description = "The number of OCPUS for the replica instances to use when flex shape is enabled"
  default     = ""
}

variable "redis01_redis_replica_memory_in_gb" {
  description = "The amount of memory in GB for the replica instances to use when flex shape is enabled"
  default     = ""
}

variable "redis01_ssh_public_key" {
  description = "Defines SSH Public Key to be used in order to remotely connect to compute instances"
}

variable "redis01_linux_compute_instance_compartment_name" {
  description = "Defines the compartment name where the infrastructure will be created"
}

variable "redis01_linux_compute_network_compartment_name" {
  description = "Defines the compartment where the Network is currently located"
}

variable "redis01_vcn_display_name" {
  description = "VCN Display name to execute lookup"
}

variable "redis01_private_network_subnet_name" {
  description = "Defines the subnet display name where this resource will be created at"
}

variable "redis01_compute_nsg_name" {
  description = "Name of the NSG associated to the computes"
  default     = ""
}

variable "redis01_instance_backup_policy_level" {
  description = "The backup policy of all instances boot volumes"
}

variable "redis01_master_disk_size_in_gb" {
  description = "The size of the attached disk to the master instance, stores database and log data"
}

variable "redis01_master_disk_vpus_per_gb" {
  description = "The VPUS of the attached disk to the master instance"
}

variable "redis01_master_backup_policy_level" {
  description = "The backup policy of the master instance ISCSI disk"
}

variable "redis01_replica_disk_size_in_gb" {
  description = "The size of the attached disk to the replica instances, stores database and log data"
}

variable "redis01_replica_disk_vpus_per_gb" {
  description = "The VPUS of the attached disk to the replica instances"
}

variable "redis01_replica_backup_policy_level" {
  description = "The backup policy of replica instances ISCSI disks"
}

variable "redis01_redis_version" {
  description = "The version of Redis used in the setup"
}

variable "redis01_is_orm" {
  description = "If ORM is being use to provision the infrastructure. This shouldn't ever be set to true manually."
  default     = false
}

/********** Brick Variables **********/
