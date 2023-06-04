## KeyPair generate
resource "aws_key_pair" "ssh_generated_key" {
  key_name   = "myKeyPair"
  public_key = tls_private_key.ssh_key.public_key_openssh
}

resource "tls_private_key" "ssh_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# resource "aws_key_pair" "SSH_generated_key" {
#   key_name   = ""
#   public_key = tls_private_key.ec2_ssh_key.public_key_openssh
# }


# Copies the key in content into files in local system
resource "local_file" "private_key_pem" {
  content  = tls_private_key.ssh_key.private_key_pem
  filename = "private_key.pem"
}

resource "local_file" "public_key_pem" {
  content  = tls_private_key.ssh_key.public_key_pem
  filename = "public_key.pem"
}

resource "local_file" "public_key_openssh" {
  content  = tls_private_key.ssh_key.public_key_openssh
  filename = "public_key_openssh.key"
}

