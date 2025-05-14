# Bingo Driven - Front-end

Aplicação React com Vite para gerenciamento visual de jogos de bingo.

# Tecnologias

- React
- Vite
- TypeScript
- Axios
- Docker
- Vercel (CD automático)

# Como rodar com Docker

```bash
docker-compose up --build
```

> O build do projeto usa a variável `VITE_BACKEND` para apontar para a URL da API.  
> Essa variável pode ser definida no `docker-compose.yml` como argumento de build:

```yaml
args:
  VITE_BACKEND: http://localhost:5000
```

## Como rodar localmente (sem Docker)

```bash
npm install
npm run dev
```

> Certifique-se de criar um arquivo `.env` com a variável correta:

```env
VITE_BACKEND=http://localhost:5000
```

---

## Site em produção

- Acesse: https://front-end-fawn-two.vercel.app
