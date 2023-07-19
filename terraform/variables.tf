variable "ssh_key_name" {
    description = "SSH key name"
    type = string
    sensitive = true
}

variable "regiondc" {
    description = "Region DC"
    type = string
    sensitive = true
}

variable "countdroplets" {
    description = "Count Droplets"
    type = number
    sensitive = true
}

variable "namepj" {
    description = "Name project/app"
    type = string
    sensitive = true
}