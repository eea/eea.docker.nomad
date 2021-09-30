# /etc/nomad.d/client.hcl

datacenter = "dc1"

# data_dir tends to be environment specific.
data_dir = "/opt/nomad/data"

plugin "docker" {
  config {
    allow_privileged = true
  }
}

client {
  enabled = true
}

ports {
  http = 4649
  rpc  = 4647
  serf = 4648
}

