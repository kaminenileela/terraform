resource "aws_instance" "db" {

    ami = "ami-090252cbe067a9e58"
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = "t2.micro"
    #subnet_id = "subnet-0a9a88898702ee98c"
    

    tags = {
    Name = "db"
  }

}

resource "aws_subnet" "main" {
  vpc_id     = "vpc-0971f8bbabacf2a48"
  cidr_block = "172.31.16.0/20"

  tags = {
    Name = "my-subnet-02"
  }
}


#resource <resource -type> <resource-name>
resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh"
    description = "allow ssh access"

    ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

    egress {
    from_port        = 0 #from 0 to 0 means, opening all protocols
    to_port          = 0
    protocol         = "-1" # -1 all protocols
    cidr_blocks      = ["0.0.0.0/0"]
  }

    tags = {
        Name = "allow_ssh" 
        Createdby = "Leela"
  }
}


