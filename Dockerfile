FROM nginx:latest

# Remove default Nginx config
RUN rm /etc/nginx/conf.d/default.conf

# Copy custom Nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy website files
COPY project.tar.gz /usr/share/nginx/html/
RUN tar -xvf /usr/share/nginx/html/project.tar.gz -C /usr/share/nginx/html/ \
    && rm /usr/share/nginx/html/project.tar.gz

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
