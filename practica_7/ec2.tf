resource "aws_instance" "public_instance" {
  ami                     = var.ec2_specs.ami
  instance_type           = var.ec2_specs.instance_type
  subnet_id               = aws_subnet.public_subnet.id
  key_name                = data.aws_key_pair.key.key_name
  vpc_security_group_ids = [ aws_security_group.sg_public_instance.id ]
  user_data = <<EOF
    !#/bin/bash
    echo "Este es un mensaje" > ~/mensaje.txt
  EOF
  tags = {
    "Name" = "ec2-${local.suffix}"
  }
}

resource "aws_instance" "public_instance2" {
  count                   = var.enable_monitoring ? 1:0
  ami                     = var.ec2_specs.ami
  instance_type           = var.ec2_specs.instance_type
  subnet_id               = aws_subnet.public_subnet.id
  key_name                = data.aws_key_pair.key.key_name
  vpc_security_group_ids = [ aws_security_group.sg_public_instance.id ]
  user_data = <<EOF
    !#/bin/bash
    echo "Este es un mensaje" > ~/mensaje.txt
  EOF

  tags = {
    "Name" = "monitoreo-${local.suffix}"
  }
}

