
resource "aws_subnet" "eu-west-1a-mybestsea-com" {
  vpc_id            = "${aws_vpc.mybestsea-com.id}"
  cidr_block        = "172.20.32.0/19"
  availability_zone = "eu-west-1a"

  tags = {
    KubernetesCluster                     = "mybestsea.com"
    Name                                  = "eu-west-1a.mybestsea.com"
    SubnetType                            = "Private"
    "kubernetes.io/cluster/mybestsea.com" = "owned"
    "kubernetes.io/role/internal-elb"     = "1"
  }
}

resource "aws_subnet" "eu-west-1b-mybestsea-com" {
  vpc_id            = "${aws_vpc.mybestsea-com.id}"
  cidr_block        = "172.20.64.0/19"
  availability_zone = "eu-west-1b"

  tags = {
    KubernetesCluster                     = "mybestsea.com"
    Name                                  = "eu-west-1b.mybestsea.com"
    SubnetType                            = "Private"
    "kubernetes.io/cluster/mybestsea.com" = "owned"
    "kubernetes.io/role/internal-elb"     = "1"
  }
}

resource "aws_subnet" "eu-west-1c-mybestsea-com" {
  vpc_id            = "${aws_vpc.mybestsea-com.id}"
  cidr_block        = "172.20.96.0/19"
  availability_zone = "eu-west-1c"

  tags = {
    KubernetesCluster                     = "mybestsea.com"
    Name                                  = "eu-west-1c.mybestsea.com"
    SubnetType                            = "Private"
    "kubernetes.io/cluster/mybestsea.com" = "owned"
    "kubernetes.io/role/internal-elb"     = "1"
  }
}

resource "aws_subnet" "utility-eu-west-1a-mybestsea-com" {
  vpc_id            = "${aws_vpc.mybestsea-com.id}"
  cidr_block        = "172.20.0.0/22"
  availability_zone = "eu-west-1a"

  tags = {
    KubernetesCluster                     = "mybestsea.com"
    Name                                  = "utility-eu-west-1a.mybestsea.com"
    SubnetType                            = "Utility"
    "kubernetes.io/cluster/mybestsea.com" = "owned"
    "kubernetes.io/role/elb"              = "1"
  }
}

resource "aws_subnet" "utility-eu-west-1b-mybestsea-com" {
  vpc_id            = "${aws_vpc.mybestsea-com.id}"
  cidr_block        = "172.20.4.0/22"
  availability_zone = "eu-west-1b"

  tags = {
    KubernetesCluster                     = "mybestsea.com"
    Name                                  = "utility-eu-west-1b.mybestsea.com"
    SubnetType                            = "Utility"
    "kubernetes.io/cluster/mybestsea.com" = "owned"
    "kubernetes.io/role/elb"              = "1"
  }
}

resource "aws_subnet" "utility-eu-west-1c-mybestsea-com" {
  vpc_id            = "${aws_vpc.mybestsea-com.id}"
  cidr_block        = "172.20.8.0/22"
  availability_zone = "eu-west-1c"

  tags = {
    KubernetesCluster                     = "mybestsea.com"
    Name                                  = "utility-eu-west-1c.mybestsea.com"
    SubnetType                            = "Utility"
    "kubernetes.io/cluster/mybestsea.com" = "owned"
    "kubernetes.io/role/elb"              = "1"
  }
}