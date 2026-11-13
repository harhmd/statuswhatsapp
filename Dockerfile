FROM nginx:alpine

# Copy web files
COPY . /usr/share/nginx/html

# Custom nginx config for PWA headers & SPA routing
RUN cat <<'EOF' > /etc/nginx/conf.d/default.conf
server {
    listen 80;
    server_name localhost;
    root /usr/share/nginx/html;
    index index.html;

    # Service worker should not be cached aggressively
    location = /sw.js {
        add_header Cache-Control "no-cache, no-store, must-revalidate";
        add_header Pragma "no-cache";
        add_header Expires "0";
    }

    # Manifest and icons
    location ~* \.(json|svg|png|jpg|jpeg|webp)$ {
        add_header Cache-Control "public, max-age=86400";
    }

    location / {
        try_files $uri $uri/ /index.html;
    }
}
EOF

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
