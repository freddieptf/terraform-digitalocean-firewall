resource "digitalocean_firewall" "k8s-6443" {
  name        = "${var.name}-k8s-6443"
  droplet_ids = var.droplet_ids
  count = var.is_control_plane ? 1 : 0

  inbound_rule {
    protocol         = var.rules.k8s-apiserver.protocol
    port_range       = var.rules.k8s-apiserver.port
    source_addresses = var.node_ips
  }
}