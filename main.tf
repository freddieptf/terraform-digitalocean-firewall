resource "digitalocean_firewall" "dofirewallicmp" {
  name = var.name
  droplet_ids = var.droplet_ids
  count = var.protocol == "icmp" ? 1 : 0
  inbound_rule {
    protocol         = var.protocol
    source_addresses = var.source_addresses
  }
  outbound_rule {
    protocol              = var.protocol
    destination_addresses = var.destination_addresses
  }
}

resource "digitalocean_firewall" "dofirewall" {
  name = var.name
  droplet_ids = var.droplet_ids
  count = var.protocol == "icmp" ? 0 : 1
  inbound_rule {
    protocol         = var.protocol
    port_range       = var.port
    source_addresses = var.source_addresses
  }
  outbound_rule {
    protocol              = var.protocol
    port_range            = var.port
    destination_addresses = var.destination_addresses
  }
}