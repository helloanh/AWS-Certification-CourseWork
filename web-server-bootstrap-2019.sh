#!/bin/bash
yum update -y
yum install httpd -y
service httpd start
cd /var/www/html
echo "<html><h1>Hi this is a bootstraped web server </h1></html>" > index.html
aws s3 mb s3://anhhoangtestbucketohio2019
aws s3 cp indext.html s3://anhhoangtestbucketohio2019
