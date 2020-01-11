resource "aws_elb" "api-mybestsea-com" {
  name = "api-mybestsea-com-3j9e11"

  listener = {
    instance_port     = 443
    instance_protocol = "TCP"
    lb_port           = 443
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.api-elb-mybestsea-com.id}"]
  subnets         = ["${aws_subnet.utility-eu-west-1a-mybestsea-com.id}", "${aws_subnet.utility-eu-west-1b-mybestsea-com.id}", "${aws_subnet.utility-eu-west-1c-mybestsea-com.id}"]

  health_check = {
    target              = "SSL:443"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  cross_zone_load_balancing = false
  idle_timeout              = 300

  tags = {
    KubernetesCluster                     = "mybestsea.com"
    Name                                  = "api.mybestsea.com"
    "kubernetes.io/cluster/mybestsea.com" = "owned"
  }
}

resource "aws_elb" "bastion-mybestsea-com" {
  name = "bastion-mybestsea-com-tur6cj"

  listener = {
    instance_port     = 22
    instance_protocol = "TCP"
    lb_port           = 22
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.bastion-elb-mybestsea-com.id}"]
  subnets         = ["${aws_subnet.utility-eu-west-1a-mybestsea-com.id}", "${aws_subnet.utility-eu-west-1b-mybestsea-com.id}", "${aws_subnet.utility-eu-west-1c-mybestsea-com.id}"]

  health_check = {
    target              = "TCP:22"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster                     = "mybestsea.com"
    Name                                  = "bastion.mybestsea.com"
    "kubernetes.io/cluster/mybestsea.com" = "owned"
  }
}
