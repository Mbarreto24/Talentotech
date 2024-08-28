resource "aws_security_group" "sg_ssh" {
  name        = "SG Acceso SSH"
  description = "Permite el acceso SSH desde cualquier lugar"
  vpc_id      = aws_vpc.VPC_proyecto.id

  tags = {
    Name = "SG_acceso_SSH_proyecto"
  }

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/00"]
    description = "Permite acceso al puerto 22"

  }

 ingress {
    from_port = 2357
    to_port = 2357
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/00"]
    description = "Permite acceso al puerto 22"

  }

ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/00"]
    description = "Permite acceso al puerto 22"

  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    description = "Permite salida a cualquier ip y puerto "
  }  
}

