output "ec2_instance_public_ip" {
  value = aws_instance.ec2_public.public_ip
}

output "ec2_instance_public_dns" {
  value = aws_instance.ec2_public.public_dns
}