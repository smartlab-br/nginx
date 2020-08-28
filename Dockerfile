FROM nginx:alpine

LABEL maintainer="Smartlab <smartlab-dev@mpt.mp.br>"

COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf
COPY *.html /usr/share/nginx/html/

EXPOSE 80
# Comment the next line if you are using sockets
STOPSIGNAL SIGQUIT
CMD ["nginx", "-g", "daemon off;"]
