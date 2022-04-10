terraform {
  required_version = ">= 0.13"
  required_providers {
    esxi = {
      source = "registry.terraform.io/josenk/esxi"
      #
      # For more information, see the provider source documentation:
      # https://github.com/josenk/terraform-provider-esxi
      # https://registry.terraform.io/providers/josenk/esxi
    }
  }
}


provider "esxi" {
  alias = "eg_host1"
  esxi_hostname      = "192.168.1.6"
  esxi_hostport      = "22"
  esxi_hostssl       = "443"
  esxi_username      = "${var.eg_esxi1_username}"
  esxi_password      = "${var.eg_esxi1_password}"
}

provider "esxi" {
  alias = "eg_host2"
  esxi_hostname      = "192.168.1.6"
  esxi_hostport      = "22"
  esxi_hostssl       = "443"
  esxi_username      = "${var.eg_esxi2_username}"
  esxi_password      = "${var.eg_esxi2_password}"
}