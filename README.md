# frontend config

```
$ docker build --tag=frontend:0.0.1 .

$ docker run -it --rm -p 3000:3000 \
    -e "SERVICE_BASE_URL=https://example.com" \
    -e "SERVICE_CONTEXT=/api/v2" \
    frontend:0.0.1

```

Usamos um script como entrypoint para o nginx, esse script usa o gomplete para transformar um template em um arquivo json num contexto do nginx fixo
daí no startup da app faço um fetch no endpoint e pego os valores.
