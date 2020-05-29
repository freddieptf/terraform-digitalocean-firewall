variable "name" {
    description = "The Firewall name."
    type = string
}

variable "droplet_ids" {
    description = "The list of the IDs of the Droplets assigned to the Firewall."
    type = list(string)
}

variable "protocol" {
    description = "The type of traffic to be allowed. This may be one of 'tcp', 'udp', or 'icmp'."
    type = string
}

variable "port" {
    description = "The ports on which traffic will be allowed specified as a string containing a single port, a range (e.g. '8000-9000'), or '1-65535' to open all ports for a protocol. Required for when protocol is tcp or udp"
    type = string
}

variable "destination_addresses" {
    description = "An array of strings containing the IPv4 addresses, IPv6 addresses, IPv4 CIDRs, and/or IPv6 CIDRs to which the outbound traffic will be allowed."
    type = list(string)
}

variable "source_addresses" {
    description = "An array of strings containing the IPv4 addresses, IPv6 addresses, IPv4 CIDRs, and/or IPv6 CIDRs from which the inbound traffic will be accepted."
    type = list(string)
}