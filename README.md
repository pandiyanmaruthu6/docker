# Create Centos docker image with apache webserver
![](https://cdn-images-1.medium.com/max/1600/1*QmcPDdOYGlIF57sjCLzT_w.png)

## This is a sample Image Creation in docker 
> In this script we have to use proper syntex of codes otherwise our Dockerfile won't create Docker image.


### Docker file name should be like this "Dockerfile"
---
#### Create Docker File
`touch Dockerfile`
###### what kind of os we are going to use in our image
`From centos` 
###### whois maintainer and owner of the image
`MAINTAINER pandiyanmaruthu6@gmail.com`
###### In docker image files, Always we have to start with installing update's.
`RUN yum update -y`
###### We are removing all yum caches.
`RUN yum clean all`
###### I am installing apache for this docker image. So it  will act as docker with web-server
`RUN yum install -y httpd`
###### In this Image webserver will run with 80 port in container
`EXPOSE 80`
###### We are starting the Container and Apache Service In Background after Creating the Image
`CMD ["apachectl","-DBACKGROUND"]`
###### at the end of file we did echo the succesful completion of our image.
`CMD [“echo”,”Welcome TO Centos Webserver”]` 
