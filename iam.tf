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
