service {
  name = "redis"
  address = "11.11.11.13"
  port = 6379
  tagged_addresses {
    lan = {
      address = "11.11.11.13"
      port = 6379
    }
    lan_ipv4 = {
      address = "11.11.11.13"
      port = 6379
    }
  }
}
