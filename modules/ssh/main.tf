resource "digitalocean_firewall" "ssh-22" {
  name        = var.name
  droplet_ids = var.droplet_ids
  inbound_rule {
    protocol         = var.rules.ssh.protocol
    port_range       = var.rules.ssh.port
    source_addresses = split(",", var.rules.ssh.source_addresses)
  }
}
