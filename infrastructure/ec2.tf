data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu*18.04*amd64*server*"]
  }
}

resource "aws_instance" "this" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = var.ec2_instance_type
  user_data                   = file("../scripts/userdata.sh")
  security_groups             = ["${aws_security_group.webserver.id}"]
  subnet_id                   = aws_subnet.this.id
  associate_public_ip_address = true
  lifecycle {
    create_before_destroy = true
  }

  tags = merge(local.common_tags, {
    Name = "${local.prefix}-ec2"
  })
}