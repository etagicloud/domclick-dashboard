FROM nginx:1.27-alpine

# Static HTML dashboard for Domclick top-100 agency rating.
COPY dashboard.html /usr/share/nginx/html/index.html

EXPOSE 80

# Default nginx config serves /usr/share/nginx/html/index.html at / on port 80.
# Traefik / Coolify routes incoming HTTPS traffic to this port and adds the cert.
