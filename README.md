# Projeto DevOps de Estudo

Projeto simples para praticar fluxo DevOps completo:
- API em FastAPI
- Testes automatizados com `pytest`
- Container com Docker
- CI com GitHub Actions
- Deploy base com Kubernetes manifests

## Estrutura

- `app/`: aplicação
- `tests/`: testes
- `.github/workflows/ci.yml`: pipeline de CI
- `k8s/`: manifests para cluster Kubernetes
- `Dockerfile`: build da imagem
- `docker-compose.yml`: execução local com Docker
- `Makefile`: comandos úteis

## Pré-requisitos

- Python 3.12+
- Docker e Docker Compose
- (Opcional) kubectl + cluster local (kind/minikube)

## Rodando local (sem Docker)

```bash
make install
make run
```

Acesse: `http://localhost:8000` e `http://localhost:8000/health`

## Rodando com Docker

```bash
make docker-up
```

## Testes

```bash
make test
```

## Próximos passos de aprendizado

1. Adicionar lint (`ruff`) e format (`black`) no CI.
2. Publicar imagem no Docker Hub/GHCR no pipeline.
3. Criar ambiente staging e production com branches.
4. Evoluir os manifests para Helm.
5. Adicionar observabilidade (Prometheus + Grafana).
