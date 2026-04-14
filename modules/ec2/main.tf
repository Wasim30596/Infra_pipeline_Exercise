resource "aws_instance" "example" {
  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type
  count = var.ec2_instance_count
  subnet_id =    var.ec2_subnet_id

  tags = {
    Name = "${var.env}-ec2-${count.index}"  #dev-ec2-0
  }
}