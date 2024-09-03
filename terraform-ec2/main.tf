module "ec2" {
  source = "../terraform-ec2-module"
  ami_id = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  

}