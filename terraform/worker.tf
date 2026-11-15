resource "aws_instance" "worker" {
  count                  = var.worker_count
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.instances.id]

  tags = {
    Name = "${var.environment}-worker-${count.index + 1}"
    Role = "worker"
  }

  lifecycle {
    ignore_changes = [ami]
  }
}