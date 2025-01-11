FROM caddy:alpine

COPY Caddyfile /etc/caddy/Caddyfile

EXPOSE 80

# FROM nginx:alpine

# COPY nginx.conf /etc/nginx/conf.d/default.conf

# EXPOSE 80
