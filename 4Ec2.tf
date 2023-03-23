# Creating 1st EC2 instance in Public Subnet
resource "aws_instance" "demoinstance" {
  ami                         = "ami-05afd67c4a44cc983"
  instance_type               = "t2.micro"
  key_name                    = "Linuxkey"
  vpc_security_group_ids      = ["${aws_security_group.demosg.id}"]
  subnet_id                   = "${aws_subnet.public-subnet-1.id}"
  associate_public_ip_address = true
  user_data                   = "${file("data.sh")}"
  availability_zone = "ap-south-1b"
tags = {
  Name = "My Public Instance 1"
}
}
# Creating 2nd EC2 instance in Public Subnet
resource "aws_instance" "demoinstance1" {
  ami                         = "ami-05afd67c4a44cc983"
  instance_type               = "t2.micro"
  key_name                    = "Linuxkey"
  vpc_security_group_ids      = ["${aws_security_group.demosg.id}"]
  subnet_id                   = "${aws_subnet.public-subnet-2.id}"
  associate_public_ip_address = true
  user_data                   = "${file("data.sh")}"
  availability_zone = "ap-south-1a"
tags = {
  Name = "My Public Instance 2"
}
}
