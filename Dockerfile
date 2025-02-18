FROM amazonlinux:2

# Install dependencies
RUN yum update -y && \
    yum install -y httpd git && \
    yum clean all

# Clone the repository and move files
RUN git clone https://github.com/chagak/honey-static-webapp.git /tmp/honey-static-webapp && \
    cp -r /tmp/honey-static-webapp/* /var/www/html/ && \
    rm -rf /tmp/honey-static-webapp

# Expose port 80
EXPOSE 80

# Start Apache server
RUN sed -i 's/Listen 80/Listen 85/' /etc/httpd/conf/httpd.conf
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
