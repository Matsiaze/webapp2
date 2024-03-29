FROM ubuntu:18.04
MAINTAINER tmatsiaze (Claudia Matsiaze)
#USER root
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git  
EXPOSE 80
ENV PORT=80
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
#ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
#Passing port to Heroku ctnr
CMD sed -i -e 's/$PORT/'"$PORT"'/g' /etc/nginx/nginx.conf && \
    /usr/sbin/nginx -g 'daemon off;'
