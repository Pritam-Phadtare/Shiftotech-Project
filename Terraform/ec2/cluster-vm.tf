resource "aws_instance" "master" {
    ami = ""
    instance_type = "t2.medium"
    key_name = aws_key_pair.key.key_name
    subnet_id = var.private_sub_1
    vpc_security_group_ids = [var.k8s_master_sg]
    associate_public_ip_address = false
    tags = {
      Name = "K8s-Master"
    }
}

resource "aws_instance" "worker" {
    ami = ""
    instance_type = "t2.medium"
    key_name = aws_key_pair.key.key_name
    subnet_id = var.private_sub_2
    vpc_security_group_ids = [var.k8s_worker_sg]
    associate_public_ip_address = false
    tags = {
      Name = "K8s-Worker"
    }
}