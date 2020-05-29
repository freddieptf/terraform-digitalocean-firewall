resource "digitalocean_firewall" "icmp" {
  name        = var.name
  droplet_ids = var.droplet_ids
  inbound_rule {
    protocol         = var.rules.icmp.protocol
    source_addresses = var.inbound
  }
  outbound_rule {
    protocol              = var.rules.icmp.protocol
    destination_addresses = var.outbound
  }
}
