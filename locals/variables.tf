variable "ami_id" {

    type = string
    default = "ami-0b4f379183e5706b9"
  
}

variable "instance_type" {

    type = string
    default = "t2.micro"
  
}

variable "sg_name" {

    type = string
    default = "Practice_devops"
  
}

variable "sg_cidr_blocks" {

    type = list
    default = ["0.0.0.0/0"]
  
}

variable "tags" {

    type = map 
    default = {
        Name = "MongoDB"
        Env = "PROD"
        Terraform = "true"
        Project = "Roboshop"
        Component = "MongoDB"
        

    }
  
}

variable "instance_names" {

    type = list
    default = ["MongoDB", "cart", "catalogue", "user", "Redis", "Mysql", "Rabbitmq", "Shipping", "Payment", "Web"]


  
}

variable "zone_id" {


    default = "Z047651832GRFEHHLLYTO"
  
}

variable "domain" {


    default = "nishalkdevops.online"
  
}


variable "isProd" {

    type = string
    default = "false"
  
}
