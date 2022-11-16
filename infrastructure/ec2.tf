resource "aws_instance" "ec2_public" {
  ami                         = var.ec2_ami_id
  instance_type               = var.ec2_instance_type
  user_data                   = file("../scripts/userdata.sh")
  security_groups             = ["${aws_security_group.webserver-security-group.id}"]
  subnet_id                   = aws_subnet.public-subnet.id
  associate_public_ip_address = true
  lifecycle {
    create_before_destroy = true
  }

  tags = {
    "Name" = "EC2 WEB - ${var.app_name}"
  }
}