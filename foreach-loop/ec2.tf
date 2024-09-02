resource "aws_instance" "focus" {
    for_each = var.instances
    ami = var.ami_id
    instance_type = each.value
    tags = {
      Name = each.key
    }
  
}

output "aws_instance_info" {
    value = aws_instance.focus
  
}

resource "aws_route53_record" "record" {
 
  for_each = aws_instance.focus
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain}"
  type    = "A"
  ttl     = 1
  records = [ each.key == "Web" ? each.value.public_ip : each.value.private_ip ]

}