# Use an official Nginx image as the base
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the Tetris files to the container
COPY index.html stats.js texture.jpg ./

# Update Nginx to listen on port 5000
RUN sed -i 's/listen       80;/listen       5000;/' /etc/nginx/conf.d/default.conf

# Expose port 5000
EXPOSE 5000
