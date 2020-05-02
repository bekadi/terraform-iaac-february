resource "aws_instance" "web" {
  ami             = "ami-0323c3dd2da7fb37d"
  instance_type   = "t2.micro"
  key_name        = "${aws_key_pair.us-east-1-key.key_name}"
  security_groups = ["${aws_security_group.web.name}"]

  tags = {
    Name = "TASK 3!"
  }

  user_data = <<-EOF
  #! /bin/bash
    yum install httpd -y
    systemctl restart httpd
    systemctl enable httpd
    echo "<h1>TASK 3!</h1>" > /var/www/html/index.html
     
     
     
 EOF
}
