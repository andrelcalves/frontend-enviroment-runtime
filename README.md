# frontend config

```
$ docker build --tag=frontend:0.0.1 .

$ docker run -it --rm -p 3000:3000 \
    -e "SERVICE_BASE_URL=https://example.com" \
    -e "SERVICE_CONTEXT=/api/v2" \
    frontend:0.0.1

```