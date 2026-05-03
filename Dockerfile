# Use nginx base image
FROM nginx:alpine

# Copy website files
COPY . /usr/share/nginx/html

# Replace default nginx config (optional but clean)
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80