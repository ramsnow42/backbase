# Specify the exact nginx version instead of 'latest' for reproducibility
FROM nginx:1.25.3-alpine

# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy custom HTML content
COPY index.html .

# Remove default nginx welcome page
RUN rm -f /etc/nginx/conf.d/default.conf

# Copy custom nginx configuration if you have one
# COPY nginx.conf /etc/nginx/conf.d/

# Expose port 80
EXPOSE 80

# Health check (optional but recommended)
HEALTHCHECK --interval=30s --timeout=3s \
  CMD curl -f http://localhost/ || exit 1