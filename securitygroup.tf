resource "aws_security_group" "api-elb-mybestsea-com" {
  name        = "api-elb.mybestsea.com"
  vpc_id      = "${aws_vpc.mybestsea-com.id}"
  description = "Security group for api ELB"

  tags = {
    KubernetesCluster                     = "mybestsea.com"
    Name                                  = "api-elb.mybestsea.com"
    "kubernetes.io/cluster/mybestsea.com" = "owned"
  }
}

resource "aws_security_group" "bastion-elb-mybestsea-com" {
  name        = "bastion-elb.mybestsea.com"
  vpc_id      = "${aws_vpc.mybestsea-com.id}"
  description = "Security group for bastion ELB"

  tags = {
    KubernetesCluster                     = "mybestsea.com"
    Name                                  = "bastion-elb.mybestsea.com"
    "kubernetes.io/cluster/mybestsea.com" = "owned"
  }
}

resource "aws_security_group" "bastion-mybestsea-com" {
  name        = "bastion.mybestsea.com"
  vpc_id      = "${aws_vpc.mybestsea-com.id}"
  description = "Security group for bastion"

  tags = {
    KubernetesCluster                     = "mybestsea.com"
    Name                                  = "bastion.mybestsea.com"
    "kubernetes.io/cluster/mybestsea.com" = "owned"
  }
}

resource "aws_security_group" "masters-mybestsea-com" {
  name        = "masters.mybestsea.com"
  vpc_id      = "${aws_vpc.mybestsea-com.id}"
  description = "Security group for masters"

  tags = {
    KubernetesCluster                     = "mybestsea.com"
    Name                                  = "masters.mybestsea.com"
    "kubernetes.io/cluster/mybestsea.com" = "owned"
  }
}

resource "aws_security_group" "nodes-mybestsea-com" {
  name        = "nodes.mybestsea.com"
  vpc_id      = "${aws_vpc.mybestsea-com.id}"
  description = "Security group for nodes"

  tags = {
    KubernetesCluster                     = "mybestsea.com"
    Name                                  = "nodes.mybestsea.com"
    "kubernetes.io/cluster/mybestsea.com" = "owned"
  }
}

resource "aws_security_group_rule" "all-master-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-mybestsea-com.id}"
  source_security_group_id = "${aws_security_group.masters-mybestsea-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-master-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-mybestsea-com.id}"
  source_security_group_id = "${aws_security_group.masters-mybestsea-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-node-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-mybestsea-com.id}"
  source_security_group_id = "${aws_security_group.nodes-mybestsea-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "api-elb-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.api-elb-mybestsea-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.bastion-mybestsea-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-elb-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.bastion-elb-mybestsea-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-to-master-ssh" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-mybestsea-com.id}"
  source_security_group_id = "${aws_security_group.bastion-mybestsea-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "bastion-to-node-ssh" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-mybestsea-com.id}"
  source_security_group_id = "${aws_security_group.bastion-mybestsea-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "https-api-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.api-elb-mybestsea-com.id}"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "https-elb-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-mybestsea-com.id}"
  source_security_group_id = "${aws_security_group.api-elb-mybestsea-com.id}"
  from_port                = 443
  to_port                  = 443
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "icmp-pmtu-api-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.api-elb-mybestsea-com.id}"
  from_port         = 3
  to_port           = 4
  protocol          = "icmp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "master-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.masters-mybestsea-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.nodes-mybestsea-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-to-master-tcp-1-2379" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-mybestsea-com.id}"
  source_security_group_id = "${aws_security_group.nodes-mybestsea-com.id}"
  from_port                = 1
  to_port                  = 2379
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-2382-4000" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-mybestsea-com.id}"
  source_security_group_id = "${aws_security_group.nodes-mybestsea-com.id}"
  from_port                = 2382
  to_port                  = 4000
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-4003-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-mybestsea-com.id}"
  source_security_group_id = "${aws_security_group.nodes-mybestsea-com.id}"
  from_port                = 4003
  to_port                  = 65535
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-udp-1-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-mybestsea-com.id}"
  source_security_group_id = "${aws_security_group.nodes-mybestsea-com.id}"
  from_port                = 1
  to_port                  = 65535
  protocol                 = "udp"
}

resource "aws_security_group_rule" "ssh-elb-to-bastion" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.bastion-mybestsea-com.id}"
  source_security_group_id = "${aws_security_group.bastion-elb-mybestsea-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "ssh-external-to-bastion-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.bastion-elb-mybestsea-com.id}"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

