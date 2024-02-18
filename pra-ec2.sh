#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h2>Hello world from $(hostname -f)</h2>" > /var/www/html/index.html
