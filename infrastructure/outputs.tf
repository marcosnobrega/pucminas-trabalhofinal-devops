output "ec2_instance_public_ip" {
  value = aws_instance.this.public_ip
}

output "ec2_instance_public_dns" {
  value = aws_instance.this.public_dns
}

output "efs_dns_name" {
  value = aws_efs_mount_target.this.dns_name
}

output "efs_ip" {
  value = aws_efs_mount_target.this.ip_address
}