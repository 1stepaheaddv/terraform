resource "aws_instance" "king" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  key_name      = "generated_key"
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]


  tags = {
    Name = "ec2_king"
  }

}
