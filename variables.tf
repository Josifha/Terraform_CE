variable "instance_name" {
  type = string
}

variable "machine_type" {
  description = "specified image id for instance"
  default = "n1-standard-1"
}

variable "region" {
  description = "gcp region for specified instance"
  default = "us-central1-c"
}

variable "image_name" {
  description = "image type for given instance"
  default = "ubuntu-1604-xenial-v20190411"
}

variable "image_family" {
  description = "image family for given instance"
  default = "ubuntu-os-cloud"
}

variable "network" {
  description = "network for given instance"
  default = "default"
}

variable "tags" {
  type = list
  description = "tags is used for defining the rule of a instance"
}







