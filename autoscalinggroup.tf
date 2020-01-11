
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
  max_size             = "${var.max_size}"
  min_size             = "${var.min_size}"
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

