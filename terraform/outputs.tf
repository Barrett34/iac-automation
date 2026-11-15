output "vpc_id" {
  value = aws_vpc.main.id
}

output "subnet_id" {
  value = aws_subnet.public.id
}

output "security_group_id" {
  value = aws_security_group.instances.id
}

output "master_instance_id" {
  value = aws_instance.master.id
}

output "master_public_ip" {
  value = aws_instance.master.public_ip
}