variable "name" {
    description = "The Firewall name."
    type = string
    default = "ssh-22"
}

variable "droplet_ids" {
    description = "The list of the IDs of the Droplets assigned to the Firewall."
    type = list(string)
}

variable "source_addresses" {
    description = "An array of strings containing the IPv4 addresses, IPv6 addresses, IPv4 CIDRs, and/or IPv6 CIDRs from which the inbound traffic will be accepted."
    type = list(string)
    default = []
}