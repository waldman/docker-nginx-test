#
# Bottle App Nginx
#

# Pull base image (ubuntu 14.04)
FROM ubuntu:14.04

# Apt Update
RUN apt-get -qqy update

# Install Needed software
RUN apt-get -qqy install \
    nginx-extras

# Creating needed directories
RUN mkdir -p /var/run

# Exposed ports
EXPOSE 8080

# Removing default site
RUN rm /etc/nginx/sites-enabled/default

# Add Nginx configuration
ADD nginx.conf /etc/nginx/nginx.conf

# Add Nginx app
ADD app /etc/nginx/sites-enabled/app

# Running supervisor
CMD ["nginx"]
