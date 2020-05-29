resource "digitalocean_firewall" "http-80" {
  name        = var.name
  droplet_ids = var.droplet_ids
  inbound_rule {
    protocol         = var.rules.http.protocol
    port_range       = var.rules.http.port
    source_addresses = split(",", var.rules.http.source_addresses)
  }
}
