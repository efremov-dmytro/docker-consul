"node_name" = "consul-client1"
"data_dir" = "/consul/data"
"retry_join" = ["consul-server1", "consul-server2", "consul-server3"]
"encrypt" = "aPuGh+5UDskRAbkLaXRzFoSOcSM+5vAK+NEYOWHJH7w="
"verify_incoming" = false
"verify_outgoing" = true
"verify_server_hostname" = true
"ca_file" = "/consul/config/certs/consul-agent-ca.pem"
#"cert_file" = "/consul/config/certs/dc1-server-consul-0.pem"
#"key_file" = "/consul/config/certs/dc1-server-consul-0-key.pem"
auto_encrypt = {
  tls = true
}
