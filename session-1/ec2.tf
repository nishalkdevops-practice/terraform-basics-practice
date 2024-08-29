resource "aws_instance" "nishal" {
  ami           = var.ami_id   #devops-practice
  instance_type = var.instance_type
  security_groups = [aws_security_group.allow_all.name]


  tags = var.tags
}