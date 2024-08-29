data "aws_ami" "ami_id" {
  most_recent = true
  owners = ["amazon"] 

  filter {
    name = "name"
    values = ["suse-sles-12-sp5-v20240805-hvm-ssd-x86_64"]
  }
}

output "ami_id" {
    
    value = data.aws_ami.ami_id.id
}