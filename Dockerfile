FROM wiremock/wiremock:3.13.1

# Copy extensions, __files, and mappings into the image
COPY ./extensions /var/wiremock/extensions
COPY ./mappings /home/wiremock/mappings

# Set entrypoint with required arguments
ENTRYPOINT ["/docker-entrypoint.sh", "--global-response-templating", "--disable-gzip", "--verbose"]

EXPOSE 8080
