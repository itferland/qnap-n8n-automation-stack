# Release Notes — v1.0

## 🔥 Initial Production Release

### 🚀 Features

- Complete Docker Compose stack for QNAP Container Station
- Fully hardened production-grade deployment
- n8n automation platform in Redis-backed queue mode
- Redis persistent queue backend
- Grafana dashboards for monitoring
- Prometheus for system metrics
- Watchtower automated Docker image updates (QNAP-safe socket mapping)
- Daily backup automation script with 14-day retention
- Daily Docker prune for space management
- Disaster recovery plan with simple 3-step restore
- QNAP-safe folder mappings for persistent volumes
- `.env.template` for safe secret management (GitHub-safe)
- MIT license open-source distribution

### ✅ Security

- Secrets externalized to `.env` (excluded from GitHub via .gitignore)
- Docker socket limited to Watchtower only (`system-docker.sock`)
- LAN-only default port exposure (secure unless manually exposed)
- Documented sysadmin cheat sheet for safe QNAP operations

### 🧰 Documentation

- Full README.md with deployment guide, recovery instructions, maintenance schedules
- Quick-start deployment instructions
- Backup automation fully documented
- Future roadmap included