resource "digitalocean_firewall" "https-443" {
  name        = var.name
  droplet_ids = var.droplet_ids
  inbound_rule {
    protocol         = var.rules.https.protocol
    port_range       = var.rules.https.port
    source_addresses = split(",", var.rules.https.source_addresses)
  }
}
