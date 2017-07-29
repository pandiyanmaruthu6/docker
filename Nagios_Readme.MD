# Create Nagios Docker Image
![](https://www.nagios.org/wp-content/uploads/2015/06/Nagios-Logo.jpg)
## Here we are Creating Nagios Monitoring Image by using Centos 6
## Create DockerFile 
``` vi Dockerfile
			#Nagios Monitoring Tool
			FROM guyton/centos6
			MAINTAINER pandiyanmaruthu6@gmail.com
			RUN yum update -y
			RUN yum install gd gd-devel gcc glibc glibc-common -y
			RUN yum install wget -y 
			RUN yum install epel-release* -y
			RUN yum install nagios* -y
			EXPOSE 80
			CMD ["echo","Monitoring Tool Ready!!!"]
```
###### Build Docker File
> docker build -t Nagios_monitor:version1 .
			```
			-t − is to mention a tag to the image

			ImageName − This is the name you want to give to your image.

			TagName − This is the tag you want to give to your image.

			Dir − The directory where the Docker File is present
			```
###### View Docker Image
> docker image
###### To check Nagios container
> docker ps or docker ps -a
### To inspect docker image ports
> docker inspect "Image-id"
### Login into nagios container
> docker attach "Container-id"
###### we can check process with normal linux commands
### To start nagios service
> service nagios start
##### Now we can configure and monitor our clients with nagios server
