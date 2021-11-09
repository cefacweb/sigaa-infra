FROM nginx:stable-alpine

LABEL maintainer="Fabiano Honorato <fabianoshz@gmail.com>"

COPY "docker/nginx/nginx.conf" "/etc/nginx/nginx.conf"

COPY "docker/nginx/default.conf" "/etc/nginx/templates/default.conf.template"

RUN chown -R nginx:nginx /var/cache/nginx /var/log/nginx /etc/nginx/conf.d

RUN touch /var/run/nginx.pid && chown -R nginx:nginx /var/run/nginx.pid

USER nginx

EXPOSE 80

