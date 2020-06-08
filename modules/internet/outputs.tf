output "id" {
  value       = "${digitalocean_firewall.internet.id}"
  description = "A unique ID that can be used to identify and reference a Firewall. "
}

output "status" {
  value       = "${digitalocean_firewall.internet.status}"
  description = "A status string indicating the current state of the Firewall. This can be \"waiting\", \"succeeded\", or \"failed\". "
}

output "created_at" {
  value       = "${digitalocean_firewall.internet.created_at}"
  description = "A time value given in ISO8601 combined date and time format that represents when the Firewall was created. "
}

output "pending_changes" {
  value       = "${digitalocean_firewall.internet.pending_changes}"
  description = " An list of object containing the fields, \"droplet_id\", \"removing\", and \"status\". It is provided to detail exactly which Droplets are having their security policies updated. When empty, all changes have been successfully applied. "
}

