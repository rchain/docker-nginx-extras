FROM ubuntu

RUN DEBIAN_FRONTEND=noninteractive && \
    apt update && \
    apt dist-upgrade -y && \
    apt install -y nginx nginx-extras ca-certificates gettext-base curl && \
    rm -rf /var/cache/apt && rm -rf /var/lib/apt
COPY stderr.conf /etc/nginx/conf.d/
EXPOSE 80
VOLUME /var/www/html
CMD nginx -g 'daemon off;'
