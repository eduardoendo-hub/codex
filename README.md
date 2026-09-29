# lp-codex

Landing page da **Formação Codex Pro: do Chat à Automação** — Impacta × Olhar Digital.

- Arquivo único: `index.html` (CSS, JS e logos embutidos)
- Servido por nginx (`Dockerfile` + `nginx.conf`), healthcheck em `/healthz`
- Deploy: Coolify (build pack Dockerfile, porta 80). Push na `main` → redeploy.

Para atualizar: substituir `index.html`, commit e push.

Deploy automático: webhook GitHub → Coolify (push na `main` publica sozinho).
