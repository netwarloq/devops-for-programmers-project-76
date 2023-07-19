resource "digitalocean_droplet" "web" {
  count    = var.countdroplets
  image    = "docker-20-04"
  name     = "${var.namepj}-${count.index + 1}"
  region   = var.regiondc
  size     = "s-1vcpu-1gb"
  ssh_keys = [data.digitalocean_ssh_key.ssh.id]
  tags     = [data.digitalocean_tag.webtag.name]
}

data "digitalocean_tag" "webtag" {
    name = "${var.namepj}-web"  
}