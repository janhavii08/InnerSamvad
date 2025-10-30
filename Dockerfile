# Use official Nginx image to serve Flutter web files
FROM nginx:alpine

# Copy the Flutter web build files into Nginx's web directory
COPY build/web /usr/share/nginx/html

# Expose port 80 to host
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]

