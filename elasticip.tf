resource "aws_eip" "eu-west-1a-mybestsea-com" {
  vpc = true

  tags = {
    KubernetesCluster                     = "mybestsea.com"
    Name                                  = "eu-west-1a.mybestsea.com"
    "kubernetes.io/cluster/mybestsea.com" = "owned"
  }
}

resource "aws_eip" "eu-west-1b-mybestsea-com" {
  vpc = true

  tags = {
    KubernetesCluster                     = "mybestsea.com"
    Name                                  = "eu-west-1b.mybestsea.com"
    "kubernetes.io/cluster/mybestsea.com" = "owned"
  }
}

resource "aws_eip" "eu-west-1c-mybestsea-com" {
  vpc = true

  tags = {
    KubernetesCluster                     = "mybestsea.com"
    Name                                  = "eu-west-1c.mybestsea.com"
    "kubernetes.io/cluster/mybestsea.com" = "owned"
  }
}
