FROM centos
MAINTAINER pandiyanmaruthu6@gmail.com
EXPOSE 80
EXPOSE 443
ADD cwp-latest /cwp-latest
RUN chmod -v +x /cwp-latest
CMD ["/cwp-latest"]
