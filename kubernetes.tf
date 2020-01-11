locals = {
  bastion_autoscaling_group_ids     = ["${aws_autoscaling_group.bastions-mybestsea-com.id}"]
  bastion_security_group_ids        = ["${aws_security_group.bastion-mybestsea-com.id}"]
  bastions_role_arn                 = "${aws_iam_role.bastions-mybestsea-com.arn}"
  bastions_role_name                = "${aws_iam_role.bastions-mybestsea-com.name}"
  cluster_name                      = "mybestsea.com"
  master_autoscaling_group_ids      = ["${aws_autoscaling_group.master-eu-west-1a-masters-mybestsea-com.id}", "${aws_autoscaling_group.master-eu-west-1b-masters-mybestsea-com.id}", "${aws_autoscaling_group.master-eu-west-1c-masters-mybestsea-com.id}"]
  master_security_group_ids         = ["${aws_security_group.masters-mybestsea-com.id}"]
  masters_role_arn                  = "${aws_iam_role.masters-mybestsea-com.arn}"
  masters_role_name                 = "${aws_iam_role.masters-mybestsea-com.name}"
  node_autoscaling_group_ids        = ["${aws_autoscaling_group.nodes-mybestsea-com.id}"]
  node_security_group_ids           = ["${aws_security_group.nodes-mybestsea-com.id}"]
  node_subnet_ids                   = ["${aws_subnet.eu-west-1a-mybestsea-com.id}", "${aws_subnet.eu-west-1b-mybestsea-com.id}", "${aws_subnet.eu-west-1c-mybestsea-com.id}"]
  nodes_role_arn                    = "${aws_iam_role.nodes-mybestsea-com.arn}"
  nodes_role_name                   = "${aws_iam_role.nodes-mybestsea-com.name}"
  region                            = "eu-west-1"
  route_table_private-eu-west-1a_id = "${aws_route_table.private-eu-west-1a-mybestsea-com.id}"
  route_table_private-eu-west-1b_id = "${aws_route_table.private-eu-west-1b-mybestsea-com.id}"
  route_table_private-eu-west-1c_id = "${aws_route_table.private-eu-west-1c-mybestsea-com.id}"
  route_table_public_id             = "${aws_route_table.mybestsea-com.id}"
  subnet_eu-west-1a_id              = "${aws_subnet.eu-west-1a-mybestsea-com.id}"
  subnet_eu-west-1b_id              = "${aws_subnet.eu-west-1b-mybestsea-com.id}"
  subnet_eu-west-1c_id              = "${aws_subnet.eu-west-1c-mybestsea-com.id}"
  subnet_utility-eu-west-1a_id      = "${aws_subnet.utility-eu-west-1a-mybestsea-com.id}"
  subnet_utility-eu-west-1b_id      = "${aws_subnet.utility-eu-west-1b-mybestsea-com.id}"
  subnet_utility-eu-west-1c_id      = "${aws_subnet.utility-eu-west-1c-mybestsea-com.id}"
  vpc_cidr_block                    = "${aws_vpc.mybestsea-com.cidr_block}"
  vpc_id                            = "${aws_vpc.mybestsea-com.id}"
}

output "bastion_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.bastions-mybestsea-com.id}"]
}

output "bastion_security_group_ids" {
  value = ["${aws_security_group.bastion-mybestsea-com.id}"]
}

output "bastions_role_arn" {
  value = "${aws_iam_role.bastions-mybestsea-com.arn}"
}

output "bastions_role_name" {
  value = "${aws_iam_role.bastions-mybestsea-com.name}"
}

output "cluster_name" {
  value = "mybestsea.com"
}

output "master_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.master-eu-west-1a-masters-mybestsea-com.id}", "${aws_autoscaling_group.master-eu-west-1b-masters-mybestsea-com.id}", "${aws_autoscaling_group.master-eu-west-1c-masters-mybestsea-com.id}"]
}

output "master_security_group_ids" {
  value = ["${aws_security_group.masters-mybestsea-com.id}"]
}

output "masters_role_arn" {
  value = "${aws_iam_role.masters-mybestsea-com.arn}"
}

output "masters_role_name" {
  value = "${aws_iam_role.masters-mybestsea-com.name}"
}

output "node_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.nodes-mybestsea-com.id}"]
}

output "node_security_group_ids" {
  value = ["${aws_security_group.nodes-mybestsea-com.id}"]
}

output "node_subnet_ids" {
  value = ["${aws_subnet.eu-west-1a-mybestsea-com.id}", "${aws_subnet.eu-west-1b-mybestsea-com.id}", "${aws_subnet.eu-west-1c-mybestsea-com.id}"]
}

output "nodes_role_arn" {
  value = "${aws_iam_role.nodes-mybestsea-com.arn}"
}

output "nodes_role_name" {
  value = "${aws_iam_role.nodes-mybestsea-com.name}"
}

output "region" {
  value = "eu-west-1"
}

output "route_table_private-eu-west-1a_id" {
  value = "${aws_route_table.private-eu-west-1a-mybestsea-com.id}"
}

output "route_table_private-eu-west-1b_id" {
  value = "${aws_route_table.private-eu-west-1b-mybestsea-com.id}"
}

output "route_table_private-eu-west-1c_id" {
  value = "${aws_route_table.private-eu-west-1c-mybestsea-com.id}"
}

output "route_table_public_id" {
  value = "${aws_route_table.mybestsea-com.id}"
}

output "subnet_eu-west-1a_id" {
  value = "${aws_subnet.eu-west-1a-mybestsea-com.id}"
}

output "subnet_eu-west-1b_id" {
  value = "${aws_subnet.eu-west-1b-mybestsea-com.id}"
}

output "subnet_eu-west-1c_id" {
  value = "${aws_subnet.eu-west-1c-mybestsea-com.id}"
}

output "subnet_utility-eu-west-1a_id" {
  value = "${aws_subnet.utility-eu-west-1a-mybestsea-com.id}"
}

output "subnet_utility-eu-west-1b_id" {
  value = "${aws_subnet.utility-eu-west-1b-mybestsea-com.id}"
}

output "subnet_utility-eu-west-1c_id" {
  value = "${aws_subnet.utility-eu-west-1c-mybestsea-com.id}"
}

output "vpc_cidr_block" {
  value = "${aws_vpc.mybestsea-com.cidr_block}"
}

output "vpc_id" {
  value = "${aws_vpc.mybestsea-com.id}"
}

provider "aws" {
  region = "eu-west-1"
}

resource "aws_autoscaling_attachment" "bastions-mybestsea-com" {
  elb                    = "${aws_elb.bastion-mybestsea-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.bastions-mybestsea-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1a-masters-mybestsea-com" {
  elb                    = "${aws_elb.api-mybestsea-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1a-masters-mybestsea-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1b-masters-mybestsea-com" {
  elb                    = "${aws_elb.api-mybestsea-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1b-masters-mybestsea-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1c-masters-mybestsea-com" {
  elb                    = "${aws_elb.api-mybestsea-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1c-masters-mybestsea-com.id}"
}

resource "aws_autoscaling_group" "bastions-mybestsea-com" {
  name                 = "bastions.mybestsea.com"
  launch_configuration = "${aws_launch_configuration.bastions-mybestsea-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.utility-eu-west-1a-mybestsea-com.id}", "${aws_subnet.utility-eu-west-1b-mybestsea-com.id}", "${aws_subnet.utility-eu-west-1c-mybestsea-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "mybestsea.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "bastions.mybestsea.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "bastions"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/bastion"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "bastions"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-eu-west-1a-masters-mybestsea-com" {
  name                 = "master-eu-west-1a.masters.mybestsea.com"
  launch_configuration = "${aws_launch_configuration.master-eu-west-1a-masters-mybestsea-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1a-mybestsea-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "mybestsea.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-west-1a.masters.mybestsea.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-1a"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "master-eu-west-1a"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-eu-west-1b-masters-mybestsea-com" {
  name                 = "master-eu-west-1b.masters.mybestsea.com"
  launch_configuration = "${aws_launch_configuration.master-eu-west-1b-masters-mybestsea-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1b-mybestsea-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "mybestsea.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-west-1b.masters.mybestsea.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-1b"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "master-eu-west-1b"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-eu-west-1c-masters-mybestsea-com" {
  name                 = "master-eu-west-1c.masters.mybestsea.com"
  launch_configuration = "${aws_launch_configuration.master-eu-west-1c-masters-mybestsea-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1c-mybestsea-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "mybestsea.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-west-1c.masters.mybestsea.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-1c"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "master-eu-west-1c"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "nodes-mybestsea-com" {
  name                 = "nodes.mybestsea.com"
  launch_configuration = "${aws_launch_configuration.nodes-mybestsea-com.id}"
  max_size             = 3
  min_size             = 3
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1a-mybestsea-com.id}", "${aws_subnet.eu-west-1b-mybestsea-com.id}", "${aws_subnet.eu-west-1c-mybestsea-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "mybestsea.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "nodes.mybestsea.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "nodes"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/node"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "nodes"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_ebs_volume" "a-etcd-events-mybestsea-com" {
  availability_zone = "eu-west-1a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                     = "mybestsea.com"
    Name                                  = "a.etcd-events.mybestsea.com"
    "k8s.io/etcd/events"                  = "a/a,b,c"
    "k8s.io/role/master"                  = "1"
    "kubernetes.io/cluster/mybestsea.com" = "owned"
  }
}

resource "aws_ebs_volume" "a-etcd-main-mybestsea-com" {
  availability_zone = "eu-west-1a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                     = "mybestsea.com"
    Name                                  = "a.etcd-main.mybestsea.com"
    "k8s.io/etcd/main"                    = "a/a,b,c"
    "k8s.io/role/master"                  = "1"
    "kubernetes.io/cluster/mybestsea.com" = "owned"
  }
}

resource "aws_ebs_volume" "b-etcd-events-mybestsea-com" {
  availability_zone = "eu-west-1b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                     = "mybestsea.com"
    Name                                  = "b.etcd-events.mybestsea.com"
    "k8s.io/etcd/events"                  = "b/a,b,c"
    "k8s.io/role/master"                  = "1"
    "kubernetes.io/cluster/mybestsea.com" = "owned"
  }
}

resource "aws_ebs_volume" "b-etcd-main-mybestsea-com" {
  availability_zone = "eu-west-1b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                     = "mybestsea.com"
    Name                                  = "b.etcd-main.mybestsea.com"
    "k8s.io/etcd/main"                    = "b/a,b,c"
    "k8s.io/role/master"                  = "1"
    "kubernetes.io/cluster/mybestsea.com" = "owned"
  }
}

resource "aws_ebs_volume" "c-etcd-events-mybestsea-com" {
  availability_zone = "eu-west-1c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                     = "mybestsea.com"
    Name                                  = "c.etcd-events.mybestsea.com"
    "k8s.io/etcd/events"                  = "c/a,b,c"
    "k8s.io/role/master"                  = "1"
    "kubernetes.io/cluster/mybestsea.com" = "owned"
  }
}

resource "aws_ebs_volume" "c-etcd-main-mybestsea-com" {
  availability_zone = "eu-west-1c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                     = "mybestsea.com"
    Name                                  = "c.etcd-main.mybestsea.com"
    "k8s.io/etcd/main"                    = "c/a,b,c"
    "k8s.io/role/master"                  = "1"
    "kubernetes.io/cluster/mybestsea.com" = "owned"
  }
}

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

resource "aws_iam_instance_profile" "bastions-mybestsea-com" {
  name = "bastions.mybestsea.com"
  role = "${aws_iam_role.bastions-mybestsea-com.name}"
}

resource "aws_iam_instance_profile" "masters-mybestsea-com" {
  name = "masters.mybestsea.com"
  role = "${aws_iam_role.masters-mybestsea-com.name}"
}

resource "aws_iam_instance_profile" "nodes-mybestsea-com" {
  name = "nodes.mybestsea.com"
  role = "${aws_iam_role.nodes-mybestsea-com.name}"
}

resource "aws_iam_role" "bastions-mybestsea-com" {
  name               = "bastions.mybestsea.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_bastions.mybestsea.com_policy")}"
}

resource "aws_iam_role" "masters-mybestsea-com" {
  name               = "masters.mybestsea.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_masters.mybestsea.com_policy")}"
}

resource "aws_iam_role" "nodes-mybestsea-com" {
  name               = "nodes.mybestsea.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_nodes.mybestsea.com_policy")}"
}

resource "aws_iam_role_policy" "bastions-mybestsea-com" {
  name   = "bastions.mybestsea.com"
  role   = "${aws_iam_role.bastions-mybestsea-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_bastions.mybestsea.com_policy")}"
}

resource "aws_iam_role_policy" "masters-mybestsea-com" {
  name   = "masters.mybestsea.com"
  role   = "${aws_iam_role.masters-mybestsea-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_masters.mybestsea.com_policy")}"
}

resource "aws_iam_role_policy" "nodes-mybestsea-com" {
  name   = "nodes.mybestsea.com"
  role   = "${aws_iam_role.nodes-mybestsea-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_nodes.mybestsea.com_policy")}"
}

resource "aws_internet_gateway" "mybestsea-com" {
  vpc_id = "${aws_vpc.mybestsea-com.id}"

  tags = {
    KubernetesCluster                     = "mybestsea.com"
    Name                                  = "mybestsea.com"
    "kubernetes.io/cluster/mybestsea.com" = "owned"
  }
}

resource "aws_key_pair" "kubernetes-mybestsea-com-b457ca53871ac34c1f972cf862807cc0" {
  key_name   = "kubernetes.mybestsea.com-b4:57:ca:53:87:1a:c3:4c:1f:97:2c:f8:62:80:7c:c0"
  public_key = "${file("${path.module}/data/aws_key_pair_kubernetes.mybestsea.com-b457ca53871ac34c1f972cf862807cc0_public_key")}"
}

resource "aws_launch_configuration" "bastions-mybestsea-com" {
  name_prefix                 = "bastions.mybestsea.com-"
  image_id                    = "ami-076731471501960ea"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-mybestsea-com-b457ca53871ac34c1f972cf862807cc0.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.bastions-mybestsea-com.id}"
  security_groups             = ["${aws_security_group.bastion-mybestsea-com.id}"]
  associate_public_ip_address = true

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 32
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-eu-west-1a-masters-mybestsea-com" {
  name_prefix                 = "master-eu-west-1a.masters.mybestsea.com-"
  image_id                    = "ami-076731471501960ea"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-mybestsea-com-b457ca53871ac34c1f972cf862807cc0.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-mybestsea-com.id}"
  security_groups             = ["${aws_security_group.masters-mybestsea-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-1a.masters.mybestsea.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-eu-west-1b-masters-mybestsea-com" {
  name_prefix                 = "master-eu-west-1b.masters.mybestsea.com-"
  image_id                    = "ami-076731471501960ea"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-mybestsea-com-b457ca53871ac34c1f972cf862807cc0.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-mybestsea-com.id}"
  security_groups             = ["${aws_security_group.masters-mybestsea-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-1b.masters.mybestsea.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-eu-west-1c-masters-mybestsea-com" {
  name_prefix                 = "master-eu-west-1c.masters.mybestsea.com-"
  image_id                    = "ami-076731471501960ea"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-mybestsea-com-b457ca53871ac34c1f972cf862807cc0.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-mybestsea-com.id}"
  security_groups             = ["${aws_security_group.masters-mybestsea-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-1c.masters.mybestsea.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "nodes-mybestsea-com" {
  name_prefix                 = "nodes.mybestsea.com-"
  image_id                    = "ami-076731471501960ea"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-mybestsea-com-b457ca53871ac34c1f972cf862807cc0.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.nodes-mybestsea-com.id}"
  security_groups             = ["${aws_security_group.nodes-mybestsea-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_nodes.mybestsea.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 128
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

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

terraform = {
  required_version = ">= 0.9.3"
}
