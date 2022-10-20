"node_name" = "server2"
"datacenter" = "dc1"
"domain" = "consul"
"server" = true
"ui" = true
"data_dir" = "/consul/data"
"retry_join" = ["server1.dc1.consul", "server3.dc.consul"]
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
services {
  name = "counting",
  id = "counting-1",
  port = 9001,
  token = "6a79a2f8-86ce-efba-f1ae-d59e022fd0cc",
  check {
    http = "http://11.11.11.13:9001/health",
    method = "GET",
    interval = "1s",
    timeout = "1s",
  }
}
services {
  name = "dashboard",
  id = "dashboard-check",
  port = 9002,
  token = "358c961b-400a-acdd-4299-78c9f161ef39",
  check {
    http = "http://11.11.11.13:9002/health",
    method = "GET",
    interval = "1s",
    timeout = "1s"
  }
}
auto_encrypt = {
  allow_tls = true
}
"encrypt" = "aPuGh+5UDskRAbkLaXRzFoSOcSM+5vAK+NEYOWHJH7w="
"verify_incoming" = false
"verify_outgoing" = true
"verify_server_hostname" = true
"verify_incoming_rpc" = true
"ca_file" = "/consul/config/certs/consul-agent-ca.pem"
"cert_file" = "/consul/config/certs/dc1-server-consul-1.pem"
"key_file" = "/consul/config/certs/dc1-server-consul-1-key.pem"
#"cert_file" = "/consul/config/certs/server2.dc1.consul.crt"
#"key_file" = "/consul/config/certs/server2.dc1.consul.key"