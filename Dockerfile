# Use the official OpenResty base image
FROM openresty/openresty:latest

# Copy the custom nginx configuration to the container
#COPY nginx.conf /etc/nginx/nginx.conf
COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

COPY lua/ /usr/local/openresty/nginx/lua/

# Expose port 80 for Nginx
EXPOSE 80

# Start Nginx in the foreground
CMD ["/usr/local/openresty/nginx/sbin/nginx", "-g", "daemon off;"]
