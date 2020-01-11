resource "aws_internet_gateway" "mybestsea-com" {
  vpc_id = "${aws_vpc.mybestsea-com.id}"

  tags = {
    KubernetesCluster                     = "mybestsea.com"
    Name                                  = "mybestsea.com"
    "kubernetes.io/cluster/mybestsea.com" = "owned"
  }
}
