"node_name" = "server3"
"datacenter" = "dc1"
"domain" = "consul"
"server" = true
"ui" = true
"data_dir" = "/consul/data"
"retry_join" = ["server2.dc1.consul", "server3.dc1.consul"]
"client_addr" = "0.0.0.0"
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
  http = -1
  https = 8501
}
auto_encrypt = {
  allow_tls = true
}
"service" = {
  "id" = "redis1"
  "name" = "redis1"
  "tags" = ["secondary"]
  "address" = "11.11.11.13"
  "port" = 6389
  "enable_tag_override" = false
  "token" = "f11d2f74-a3a1-7142-c315-61258599b53b"
  "check" = {
    "id" = "redis"
    "name" = "Consul REDIS1"
    "tcp" = "11.11.11.13:6389"
    "interval" = "10s"
    "timeout" = "1s"
  }
}
"encrypt" = "aPuGh+5UDskRAbkLaXRzFoSOcSM+5vAK+NEYOWHJH7w="
"verify_incoming" = false
"verify_outgoing" = true
"verify_server_hostname" = true
"verify_incoming_rpc" = true
"ca_file" = "/consul/config/certs/consul-agent-ca.pem"
"cert_file" = "/consul/config/certs/dc1-server-consul-2.pem"
"key_file" = "/consul/config/certs/dc1-server-consul-2-key.pem"
#"cert_file" = "/consul/config/certs/server3.dc1.consul.crt"
#"key_file" = "/consul/config/certs/server3.dc1.consul.key"