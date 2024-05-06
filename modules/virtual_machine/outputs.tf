output "instance_id" {
  description = "The ID of the created instance"
  value       = aws_instance.example.id
}

output "public_ip" {
  description = "The public IP of the instance"
  value       = aws_instance.example.public_ip
}

output "private_ip" {
  description = "The private IP of the instance"
  value       = aws_instance.example.private_ip
}