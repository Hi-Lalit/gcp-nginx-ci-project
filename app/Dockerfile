FROM nginx:trixie-perl

RUN apt-get update && \
    apt-get upgrade -y && \
    rm -rf /var/lib/apt/lists/*

# 1. Create a secure system user group and account
RUN groupadd -r appuser && useradd -r -g appuser appuser

COPY index.html /usr/share/nginx/html/index.html
COPY 404.html /usr/share/nginx/html/404.html
COPY nginx.conf /etc/nginx/nginx.conf

# 2. Adjust file owner permissions for your custom user profile
RUN chown -R appuser:appuser /usr/share/nginx/html && \
    chown -R appuser:appuser /var/cache/nginx && \
    chown -R appuser:appuser /var/log/nginx && \
    chown -R appuser:appuser /etc/nginx && \
    touch /var/run/nginx.pid && \
    chown -R appuser:appuser /var/run/nginx.pid

# 3. Apply the USER directive to fulfill the Trivy security policy
USER appuser

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]