# Formação Codex Pro — landing page estática servida por nginx
FROM nginx:1.27-alpine

# curl para o healthcheck (Coolify roda o check dentro do container)
RUN apk add --no-cache curl

# Config (inclui healthcheck /healthz → "ok")
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Conteúdo da LP (arquivo único: CSS, JS e logos embutidos)
COPY index.html robots.txt /usr/share/nginx/html/

EXPOSE 80

# 127.0.0.1 (não "localhost") — localhost->::1 pode falhar no alpine
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD curl -fsS http://127.0.0.1/healthz || exit 1
