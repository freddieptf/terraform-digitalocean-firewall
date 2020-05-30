resource "digitalocean_firewall" "icmp" {
  name        = var.name
  droplet_ids = var.droplet_ids
  inbound_rule {
    protocol         = var.rules.icmp.protocol
    source_addresses = var.source_addresses
    source_droplet_ids = var.source_droplet_ids
  }
  outbound_rule {
    protocol              = var.rules.icmp.protocol
    destination_addresses = var.destination_addresses
    destination_droplet_ids = var.destination_droplet_ids
  }
}
