# Add this at the top for reproducibility
ARG SOURCE_DATE_EPOCH=0

FROM nginx:trixie-perl

COPY index.html /usr/share/nginx/html/index.html
COPY 404.html /usr/share/nginx/html/404.html
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]