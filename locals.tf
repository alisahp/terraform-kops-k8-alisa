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


