resource "aws_security_group" "allow_all" {
  name        = "var.sg_name"
  description = "Allow TLS inbound traffic"
  

  ingress {
    description = "Allow all ports"
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = var.sg_cidr_blocks
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.sg_cidr_blocks
  }


}