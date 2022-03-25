
resource "aws_instance" "private-1" {
  ami           = "ami-03e0b06f01d45a4eb"
  subnet_id   = "${aws_subnet.private.id}"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id, aws_security_group.allow_all.id]
}
