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
