resource "aws_launch_configuration" "aws_conf" {
name = "terra_conf"
image_id = "ami-0e32cd9fc07499bab"
instance_type = "t2.micro"
security_groups = ["sg-0ac105927aa74f451"]
iam_instance_profile = "S3Full_Access"
key_name = "OregonMy"
}


resource "aws_autoscaling_group" "terraformasg" {
name = "terraformasg"
max_size = 1
min_size = 0
desired_capacity = 1
launch_configuration = "demolauchconf"
vpc_zone_identifier = ["subnet-05970c59aa333a5ab"]
tag {
key = "Type"
value = "frontend"
propagate_at_launch = true
}
}

