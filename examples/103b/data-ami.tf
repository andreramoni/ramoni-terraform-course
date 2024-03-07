data "aws_ami" "amazon_linux_ami" {
  most_recent      = true

  filter {
    name   = "name"
    values = ["amzn2-ami-*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "architecture"
    values = ["arm64"]
  }
}
output "amazon_linux_ami" { value = data.aws_ami.amazon_linux_ami.id }

