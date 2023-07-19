resource "digitalocean_loadbalancer" "web-lb" {
  name   = "${var.namepj}-web-lb"
  region = var.regiondc

  forwarding_rule {
    entry_port     = 80
    entry_protocol = "http"

    target_port     = 3000
    target_protocol = "http"
  }

  healthcheck {
    port     = 3000
    protocol = "http"
    path     =  "/"
  }

  droplet_ids = digitalocean_droplet.web.*.id
}