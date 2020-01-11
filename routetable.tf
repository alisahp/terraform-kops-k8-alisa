resource "aws_route" "0-0-0-0--0" {
  route_table_id         = "${aws_route_table.mybestsea-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.mybestsea-com.id}"
}

resource "aws_route" "private-eu-west-1a-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-eu-west-1a-mybestsea-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.eu-west-1a-mybestsea-com.id}"
}

resource "aws_route" "private-eu-west-1b-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-eu-west-1b-mybestsea-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.eu-west-1b-mybestsea-com.id}"
}

resource "aws_route" "private-eu-west-1c-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-eu-west-1c-mybestsea-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.eu-west-1c-mybestsea-com.id}"
}

resource "aws_route53_record" "api-mybestsea-com" {
  name = "api.mybestsea.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.api-mybestsea-com.dns_name}"
    zone_id                = "${aws_elb.api-mybestsea-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z7FMXSH2DAOMJ"
}

resource "aws_route53_record" "bastion-mybestsea-com" {
  name = "bastion.mybestsea.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.bastion-mybestsea-com.dns_name}"
    zone_id                = "${aws_elb.bastion-mybestsea-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z7FMXSH2DAOMJ"
}

resource "aws_route_table" "mybestsea-com" {
  vpc_id = "${aws_vpc.mybestsea-com.id}"

  tags = {
    KubernetesCluster                     = "mybestsea.com"
    Name                                  = "mybestsea.com"
    "kubernetes.io/cluster/mybestsea.com" = "owned"
    "kubernetes.io/kops/role"             = "public"
  }
}

resource "aws_route_table" "private-eu-west-1a-mybestsea-com" {
  vpc_id = "${aws_vpc.mybestsea-com.id}"

  tags = {
    KubernetesCluster                     = "mybestsea.com"
    Name                                  = "private-eu-west-1a.mybestsea.com"
    "kubernetes.io/cluster/mybestsea.com" = "owned"
    "kubernetes.io/kops/role"             = "private-eu-west-1a"
  }
}

resource "aws_route_table" "private-eu-west-1b-mybestsea-com" {
  vpc_id = "${aws_vpc.mybestsea-com.id}"

  tags = {
    KubernetesCluster                     = "mybestsea.com"
    Name                                  = "private-eu-west-1b.mybestsea.com"
    "kubernetes.io/cluster/mybestsea.com" = "owned"
    "kubernetes.io/kops/role"             = "private-eu-west-1b"
  }
}

resource "aws_route_table" "private-eu-west-1c-mybestsea-com" {
  vpc_id = "${aws_vpc.mybestsea-com.id}"

  tags = {
    KubernetesCluster                     = "mybestsea.com"
    Name                                  = "private-eu-west-1c.mybestsea.com"
    "kubernetes.io/cluster/mybestsea.com" = "owned"
    "kubernetes.io/kops/role"             = "private-eu-west-1c"
  }
}

resource "aws_route_table_association" "private-eu-west-1a-mybestsea-com" {
  subnet_id      = "${aws_subnet.eu-west-1a-mybestsea-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-1a-mybestsea-com.id}"
}

resource "aws_route_table_association" "private-eu-west-1b-mybestsea-com" {
  subnet_id      = "${aws_subnet.eu-west-1b-mybestsea-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-1b-mybestsea-com.id}"
}

resource "aws_route_table_association" "private-eu-west-1c-mybestsea-com" {
  subnet_id      = "${aws_subnet.eu-west-1c-mybestsea-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-1c-mybestsea-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-1a-mybestsea-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-1a-mybestsea-com.id}"
  route_table_id = "${aws_route_table.mybestsea-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-1b-mybestsea-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-1b-mybestsea-com.id}"
  route_table_id = "${aws_route_table.mybestsea-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-1c-mybestsea-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-1c-mybestsea-com.id}"
  route_table_id = "${aws_route_table.mybestsea-com.id}"
}
