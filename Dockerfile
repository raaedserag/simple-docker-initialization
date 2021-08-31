FROM centos:latest
COPY ./index.html  /tmp/index.html
COPY ./bootstrap.sh  /tmp/bootstrap.sh
RUN chmod +x /tmp/bootstrap.sh
RUN /tmp/bootstrap.sh auto 
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80