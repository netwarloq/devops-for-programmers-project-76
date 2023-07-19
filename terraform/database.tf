# resource "digitalocean_database_db" "database" {
#   cluster_id = digitalocean_database_cluster.postgres-db-cl.id
#   name       = "db-${var.namepj}"
# }

resource "digitalocean_database_firewall" "db-fw" {
  count      = var.countdroplets
  cluster_id = digitalocean_database_cluster.postgres-db-cl.id

  rule {
    type  = "tag"
    value = data.digitalocean_tag.webtag.name
  }
}

resource "digitalocean_database_cluster" "postgres-db-cl" {
  name          = "${var.namepj}-postgres-cluster"
  engine        = "pg"
  version       = "15"
  size          = "db-s-1vcpu-1gb"
  region        = var.regiondc
  node_count    = 1
}