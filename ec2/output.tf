output "ec2_instance_public_ip" {
    value = aws_instance.my_instance.public_ip
}

#output, if there are multiple instances, it will return a list of public dns names of all the instances created
#  output "ec2_instance_public_dns" {
#     value = [
#         for instance in aws_instance.my_instance : instance.public_dns
#     ]
#  }


 # output - value
 # variable - default, type
 # meta argument - count, for_each, depends_on

#  count = 1
#  for_each = tomap({
#         test1 = "t2.micro"  #test1 is the key and "t2.micro" is the value
#         test2 = "t3.micro"  #test2 is the key and "t3.micro" is the value
#  })
#  depends_on = [aws_security_group.my_group] # This resource will be created only after the security group is created

#  instance_type = each.value # Access the value associated with each key in the for_each map
