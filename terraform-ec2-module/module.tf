resource "aws_instance" "nishal" {

  ami           = "var.ami_id"
  instance_type = "var.instance_type"
  

}