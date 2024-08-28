resource "aws_instance" "Instancia_proyecto" {
 ami = "ami-04a81a99f5ec58529"
 instance_type = "t2.micro"
 key_name = "clave01"
 associate_public_ip_address = true
 subnet_id = aws_subnet.Subnet_public.id
 vpc_security_group_ids = [ aws_security_group.sg_ssh.id ]

 tags = {
    Name = "Instancia_proyecto"
 }
}
