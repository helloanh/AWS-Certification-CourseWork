#!/bin/bash
yum update -y
yum install httpd -y
service httpd start
chkconfig httpd on
cd /var/www/html
echo "<html><h1>Hi this is a bootstraped web server </h1></html>" > index.html
aws s3 mb s3://ANYOTHERUNIQUENAME
aws s3 cp index.html s3://ANYOTHERUNIQUENAME

