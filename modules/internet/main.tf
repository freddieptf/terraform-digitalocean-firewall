resource "digitalocean_firewall" "internet" {
  name        = var.name
  droplet_ids = var.droplet_ids
  outbound_rule {
    protocol              = "tcp"
    port_range            = "1-65535"
    destination_addresses = var.destination_addresses
  }
  outbound_rule {
    protocol              = "udp"
    port_range            = "1-65535"
    destination_addresses = var.destination_addresses
  }
}
