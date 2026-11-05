output "environment_name" {
  value = "dev"
}
output "private_Ip" {
  value = aws_subnet.main.id
}
