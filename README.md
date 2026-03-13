# My App

Auto-deployed to the Oracle server via GitHub Actions.

## Quick Start

1. **Edit `service.yml`** — set `name`, `subdomain`, `container_name`, `internal_port`
2. **Edit `docker-compose.yml`** — update `container_name` to match `service.yml`
3. **Code your app** — replace `main.py` / `Dockerfile` with your stack
4. **`git push`** -> deployed at `<subdomain>.suras.org`

## Repo Setup (one-time, already done if you used onboard-repo.sh)

From Orchestrator2-Secure:
```bash
./scripts/onboard-repo.sh <repo-name>
```

This creates the repo, adds the server deploy key, and sets `SSH_PRIVATE_KEY` + `SSH_HOST` secrets.

## Stacks

Default is Python + FastAPI. To use a different stack, replace:
- `Dockerfile`
- `requirements.txt` (or equivalent)
- `main.py`

Keep `docker-compose.yml` and `service.yml` structure — only change values.
