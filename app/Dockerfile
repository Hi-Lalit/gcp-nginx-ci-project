FROM nginx:trixie-perl

RUN apt-get update && \
    apt-get upgrade -y && \
    rm -rf /var/lib/apt/lists/*

COPY index.html /usr/share/nginx/html/index.html
COPY 404.html /usr/share/nginx/html/404.html
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]