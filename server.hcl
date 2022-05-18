# /etc/nomad.d/server.hcl

# data_dir tends to be environment specific.
data_dir = "/opt/nomad/data"

server {
  enabled          = true
  bootstrap_expect = 3
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

