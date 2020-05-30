variable "name" {
    description = "The Firewall name."
    type = string
    default = "icmp"
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

variable "destination_addresses" {
    description = "An array of strings containing the IPv4 addresses, IPv6 addresses, IPv4 CIDRs, and/or IPv6 CIDRs to which the outbound traffic will be allowed."
    type = list(string)
    default = ["0.0.0.0/0", "::/0"]
}

variable "source_droplet_ids" {
    description = "An array containing the IDs of the Droplets from which the inbound traffic will be accepted."
    type = list(string)
    default = []
}

variable "destination_droplet_ids" {
    description = "An array containing the IDs of the Droplets to which the outbound traffic will be allowed."
    type = list(string)
    default = []
}