"node_name" = "client1"
"data_dir" = "/consul/data"
"retry_join" = ["consul-server1", "consul-server2", "consul-server3"]
"encrypt" = "aPuGh+5UDskRAbkLaXRzFoSOcSM+5vAK+NEYOWHJH7w="
"verify_incoming" = false
"verify_outgoing" = true
"verify_server_hostname" = true
"ca_file" = "/consul/config/certs/consul-agent-ca.pem"
"cert_file" = "/consul/config/certs/client.dc1.consul.crt"
"key_file" = "/consul/config/certs/client.dc1.consul.key"
auto_encrypt = {
  tls = true
}
services {
  name = "counting2",
  id = "counting-1",
  port = 9001,
  token = "28b3b5ad-bff0-9571-986f-5d26aa797127",
  check {
    http = "http://11.11.11.13:9005/health",
    method = "GET",
    interval = "1s",
    timeout = "1s",
  }
}
services {
  name = "dashboard2",
  id = "dashboard-check",
  port = 9002,
  token = "a9f0f87e-ec27-ebe3-74f4-9968475b2ab9",
  check {
    http = "http://11.11.11.13:9006/health",
    method = "GET",
    interval = "1s",
    timeout = "1s"
  }
}
ports {
  http = -1
  https = 8501
}