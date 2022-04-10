terraform {
  required_version = ">= 0.13"
}


resource "esxi_guest" "vmtest" {

  provider = esxi.eg_host1
  guest_name         = "vmtest"
  disk_store         = "datastore2"

  memsize = "8192"
  numvcpus = 12
  #
  #  Specify an existing guest to clone, an ovf source, or neither to build a bare-metal guest vm.
  #
  #clone_from_vm      = "Templates/centos7"
  #ovf_source        = "/local_path/centos-7.vmx"
  ovf_source = "local/debiantest.ovf"

  network_interfaces {
    virtual_network = "VM Network"
  }

  provisioner "local-exec" {
    command = "echo ${self.ip_address} >> private_ips.txt"
  }
}

output "ip" {
  value = [esxi_guest.vmtest.ip_address]
}
