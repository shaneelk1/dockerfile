# our base image
FROM ubuntu:latest

# Install nginx
RUN apt update && apt install -yyq nginx

# copy files required for the app to run
COPY trunk/ /var/www/html/

# tell the port number the container should expose
EXPOSE 80

# run the application
CMD ["nginx", "-g", "daemon off;"]
