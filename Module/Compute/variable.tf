variable "child_compute" {
  type = map(object({
    nic_name = string
    location = string
    resource_group_name = string
    nsg_name = string
    subnet_name = string
    virtual_network_name = string
    secret_name = string
  }))
}