# Use the default Nginx image
FROM nginx:latest

# Copy custom HTML content into the Nginx container
COPY ./index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80


