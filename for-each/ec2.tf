resource "aws_instance" "expense" {
    for_each = var.instance_type
    ami = data.aws_ami.ami_info.id
    vpc_security_group_ids = ["sg-055eae504b31da7bd"]
    instance_type = each.value

    tags = merge( 

        var.common_tags,
        {
        Name = each.key
        module = each.key
    })

}