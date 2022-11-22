resource "aws_efs_file_system" "this" {
  tags = merge(local.common_tags, {
    Name = "${local.prefix}-efs"
  })
}

resource "aws_efs_mount_target" "this" {
  file_system_id  = aws_efs_file_system.this.id
  subnet_id       = aws_subnet.this.id
  security_groups = ["${aws_security_group.efs.id}"]
}