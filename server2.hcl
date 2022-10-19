"node_name" = "server2"
"datacenter" = "dc1"
"domain" = "consul"
"server" = true
"ui" = true
"data_dir" = "/consul/data"
"retry_join" = ["server1", "server3"]
"addresses" = {
  "http" = "0.0.0.0"
}
"acl" = {
  "enabled" = true
  "default_policy" = "deny"
  "down_policy" = "extend-cache"
  "enable_token_persistence" = true
  "tokens" = {
    "master" = "e95b599e-166e-7d80-08ad-aee76e7ddf19"
    "agent" = "e95b599e-166e-7d80-08ad-aee76e7ddf19"
  }
}
ports {
  http = 8500
  https = 8501
}
auto_encrypt = {
  allow_tls = true
}
"encrypt" = "aPuGh+5UDskRAbkLaXRzFoSOcSM+5vAK+NEYOWHJH7w="
"verify_incoming" = true
"verify_outgoing" = true
"verify_server_hostname" = true
"ca_file" = "/consul/config/certs/consul-agent-ca.pem"
"cert_file" = "/consul/config/certs/server2.dc1.consul.crt"
"key_file" = "/consul/config/certs/server2.dc1.consul.key"