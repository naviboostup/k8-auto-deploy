# Use the official NGINX image as the base image
FROM nginx:latest

WORKDIR /usr/share/nginx/html
# Copy custom configuration file to container
RUN rm -rf *
COPY index.html .

# Expose ports
EXPOSE 80

# Start NGINX when the container starts
CMD ["nginx", "-g", "daemon off;"]