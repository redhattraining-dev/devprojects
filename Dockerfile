FROM ubi7/ubi:7.7

ENV PORT 8080
RUN yum install -y httpd && \
 yum clean all

USER apache
# Expose the custom port that you provided in the ENV var
EXPOSE ${PORT}
# Copy all files under src/ folder to Apache DocumentRoot (/var/www/html)
# Start Apache in the foreground
CMD ["httpd", "-D", "FOREGROUND"