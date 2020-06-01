## How to use this Module

Terraform module which creates a firewall on DigitalOcean.


```
resource "digitalocean_droplet" "droplet" {
  image  = "ubuntu-18-04-x64"
  name   = "exmaple-droplet"
  region = "ams3"
  size   = "s-1vcpu-2gb"
}

module "examplehttp-80" {
  source      = "freddieptf/firewall/digitalocean//modules/http"
  version     = "0.0.1"
  name        = "examplehttp-80"
  droplet_ids = ["${digitalocean_droplet.droplet.id}"]
}

module "example" {
  source                = "freddieptf/firewall/digitalocean"
  version               = "0.0.1"
  name                  = "example"
  protocol              = "tcp"
  port                  = "6090"
  destination_addresses = ["0.0.0.0/0"]
  source_addresses      = ["0.0.0.0/0"]
  droplet_ids           = ["${digitalocean_droplet.droplet.id}"]
}

```

