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
      operating_system : "Oracle Linux",
      user_data : {
        runcmd : ["grubby --args selinux=0 --update-kernel ALL"],
      },
    },
  }
}
