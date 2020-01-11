resource "aws_vpc" "mybestsea-com" {
  cidr_block           = "172.20.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    KubernetesCluster                     = "mybestsea.com"
    Name                                  = "mybestsea.com"
    "kubernetes.io/cluster/mybestsea.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options" "mybestsea-com" {
  domain_name         = "eu-west-1.compute.internal"
  domain_name_servers = ["AmazonProvidedDNS"]

  tags = {
    KubernetesCluster                     = "mybestsea.com"
    Name                                  = "mybestsea.com"
    "kubernetes.io/cluster/mybestsea.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options_association" "mybestsea-com" {
  vpc_id          = "${aws_vpc.mybestsea-com.id}"
  dhcp_options_id = "${aws_vpc_dhcp_options.mybestsea-com.id}"
}

