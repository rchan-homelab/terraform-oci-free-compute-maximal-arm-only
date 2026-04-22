locals {
  protocol_number = {
    icmp   = 1
    icmpv6 = 58
    tcp    = 6
    udp    = 17
  }

  instance = {
    oracle = {
      shape : "VM.Standard.A1.Flex",
      operating_system : "Canonical Ubuntu",
      operating_system_version : "24.04",
      user_data : {
        runcmd : [
          "apt-get update --quiet --assume-yes",
          "apt-get remove --quiet --assume-yes --purge apparmor",
          "apt-get autoremove --quiet --assume-yes",
        ],
      },
    },
  }
}


