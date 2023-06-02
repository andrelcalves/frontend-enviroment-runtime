FROM nginx:1.23-alpine

## expose ports
EXPOSE 3000


ADD https://github.com/hairyhenderson/gomplate/releases/download/v3.11.3/gomplate_linux-amd64 /templates/gomplate
RUN chmod 555 /templates/gomplate

### copy over the artifacts in dist folder to default nginx public folder
COPY ./nginx/nginx.conf /etc/nginx/conf.d/default.conf
COPY ./nginx/99-startup-app.sh /docker-entrypoint.d/99-startup-app.sh
COPY ./nginx/templates/* /templates/
COPY ./src /usr/share/nginx/html

# ENTRYPOINT ["/docker-entrypoint.sh"]
# CMD ["nginx" "-g" "daemon off;"]