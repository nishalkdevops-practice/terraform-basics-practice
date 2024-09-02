variable "ami_id" {

    type = string
    default = "ami-0b4f379183e5706b9"
  
}

variable "instances" {
    type = map 
    default = {
        MongoDB = "t3.medium"
        catalogue = "t2.micro"
        cart = "t2.micro"
        user = "t2.micro"
        Mysql = "t3.medium"
        Redis = "t2.micro"
        Rabbitmq = "t2.micro"
        Shipping = "t2.micro"
        Payment = "t2.micro"
        Web = "t2.micro"

    }
}

# variable "instance_type" {

#     type = string
#     default = "t2.micro"
  
# }

# variable "sg_name" {

#     type = string
#     default = "Practice_devops"
  
# }

variable "cidr_blocks" {

    type = list
    default = ["0.0.0.0/0"]
  
}

# variable "tags" {

#     type = map 
#     default = {
#         Name = "MongoDB"
#         Env = "PROD"
#         Terraform = "true"
#         Project = "Roboshop"
#         Component = "MongoDB"
        

#     }
  
# }

# variable "instance_names" {

#     type = list
#     default = ["MongoDB", "cart", "catalogue", "user", "Redis", "Mysql", "Rabbitmq", "Shipping", "Payment", "Web"]


  
# }

variable "zone_id" {


    default = "Z047651832GRFEHHLLYTO"
  
}

variable "domain" {


    default = "nishalkdevops.online"
  
}

variable "ingress" {
    type = list
    default = [
        {
            from_port = 80
            to_port = 80
            description = "Allowing port 80 from public"
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
        },

        {
            from_port = 443
            to_port = 443
            description = "Allowing port 443 from public"
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
        },

        {
            from_port = 22
            to_port = 22
            description = "Allowing port 22 from public"
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
        }


    ]
    
    

}