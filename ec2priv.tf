resource "aws_instance" "ec2priv" {
  ami           = "${var.ami_mysql_client}"
  instance_type = "t2.micro"
  count = "1"
  subnet_id = "${var.subid_priv}"
  security_groups = ["${var.secur_gr_priv}"]
  iam_instance_profile = "${aws_iam_instance_profile.test_profile.name}"
  key_name = "${var.key_name}"
tags {
Type = "frontend"
}
}
