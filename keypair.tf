resource "aws_key_pair" "kubernetes-mybestsea-com-b457ca53871ac34c1f972cf862807cc0" {
  key_name   = "kubernetes.mybestsea.com-b4:57:ca:53:87:1a:c3:4c:1f:97:2c:f8:62:80:7c:c0"
  public_key = "${file("${path.module}/data/aws_key_pair_kubernetes.mybestsea.com-b457ca53871ac34c1f972cf862807cc0_public_key")}"
}
