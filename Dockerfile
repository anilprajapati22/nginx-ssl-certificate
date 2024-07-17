# Use the official Nginx base image
FROM nginx:latest

# Copy custom Nginx configuration file
COPY nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf

# Copy SSL certificates
COPY nginx/letsencrypt /etc/letsencrypt

# Expose ports
EXPOSE 80
EXPOSE 443

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

