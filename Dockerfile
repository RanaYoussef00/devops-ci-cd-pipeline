# Use Nginx image
FROM nginx:alpine

# Copy HTML app to Nginx html folder
COPY app/ /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
