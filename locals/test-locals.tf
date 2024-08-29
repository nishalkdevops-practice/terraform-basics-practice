# #this is to create instance automatically 

# resource "aws_instance" "conditions" {

#     count = 10
#     ami           = local.ami_id   #devops-practice
#     #instance_type = "t2.micro"
#     instance_type = var.instance_names[count.index] == "MongoDB" || var.instance_names[count.index] == "Mysql" ? "t3.medium" : "t2.micro"


#     tags = {
#         Name = var.instance_names[count.index]
#     }


  
# }


# #this is to create route 53 records  automatically 

# resource "aws_route53_record" "record" {

#   count = 10  
#   zone_id = var.zone_id
#   name    = "${var.instance_names[count.index]}.${var.domain}"
#   type    = "A"
#   ttl     = 1
#   records = [aws_instance.conditions[count.index].private_ip]
# }


#this is key pair creating resources 

resource "aws_key_pair" "deployer" {
  key_name   = "nishal-pub"
  public_key = local.public_key
    
    

}


resource "aws_instance" "Key_pair_instance" {

    ami           = local.ami_id   #devops-practice
    instance_type = local.instance_type
    key_name = aws_key_pair.deployer.key_name
      
}