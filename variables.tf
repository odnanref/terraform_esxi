variable "hosts_esxi" {
    default = {
        "eg_esxi1" = "192.168.1.6"
        "eg_esxi2" = "192.168.1.7"
        "eg_esxi3" = "192.168.1.8"
    }
}

variable "eg_esxi1_username" {
    type = string
}

variable "eg_esxi1_password" {
    type = string
}

variable "eg_esxi2_username" {
    type = string
}

variable "eg_esxi2_password" {
    type = string
}
