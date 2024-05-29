resource "aws_instance" "db" {

    ami = data.aws_ami.ami_id.id
    vpc_security_group_ids = ["sg-055eae504b31da7bd" ]
    instance_type = "t3.micro"
    tags = {
        Name = "data-source-practice"
    }
}