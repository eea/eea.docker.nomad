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

tls {
  http = true
  rpc  = true

  ca_file   = "/opt/nomad/certs/server/nomad-ca.pem"
  cert_file = "/opt/nomad/certs/server/server.pem"
  key_file  = "/opt/nomad/certs/server/server-key.pem"

  verify_server_hostname = false
  verify_https_client    = false
}
