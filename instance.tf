resource "aws_instance" "server" {
  ami           = var.amazonImage
  instance_type = var.instanceType
  key_name      = var.keyName
  //delete_on_termination = true
  # provisioner "remote-exec" {
  #   inline = var.commands

  #   connection {
  #     type        = var.connectionType
  #     user        = var.connectionUser
  #     private_key = var.privateKey
  #     host        = self.public_ip
  #   }
  # }

  vpc_security_group_ids = [aws_security_group.secGroup.id]

  tags = {
    Name = var.instanceName
  }

}

output "instance_ip" {
  value = aws_instance.server.public_ip
}


