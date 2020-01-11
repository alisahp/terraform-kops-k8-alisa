
resource "aws_nat_gateway" "eu-west-1a-mybestsea-com" {
  allocation_id = "${aws_eip.eu-west-1a-mybestsea-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1a-mybestsea-com.id}"

  tags = {
    KubernetesCluster                     = "mybestsea.com"
    Name                                  = "eu-west-1a.mybestsea.com"
    "kubernetes.io/cluster/mybestsea.com" = "owned"
  }
}

resource "aws_nat_gateway" "eu-west-1b-mybestsea-com" {
  allocation_id = "${aws_eip.eu-west-1b-mybestsea-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1b-mybestsea-com.id}"

  tags = {
    KubernetesCluster                     = "mybestsea.com"
    Name                                  = "eu-west-1b.mybestsea.com"
    "kubernetes.io/cluster/mybestsea.com" = "owned"
  }
}

resource "aws_nat_gateway" "eu-west-1c-mybestsea-com" {
  allocation_id = "${aws_eip.eu-west-1c-mybestsea-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1c-mybestsea-com.id}"

  tags = {
    KubernetesCluster                     = "mybestsea.com"
    Name                                  = "eu-west-1c.mybestsea.com"
    "kubernetes.io/cluster/mybestsea.com" = "owned"
  }
}
