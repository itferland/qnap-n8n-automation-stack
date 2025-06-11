# QNAP n8n Automation Stack 🚀

![Docker Compose](https://img.shields.io/badge/docker-compose-blue)
![QNAP](https://img.shields.io/badge/platform-QNAP-brightgreen)
![Status](https://img.shields.io/badge/status-production--ready-success)
![License](https://img.shields.io/badge/license-MIT-blue)
[![Open Source](https://badges.frapsoft.com/os/v1/open-source.svg?v=103)](https://github.com/your-username/qnap-n8n-automation-stack)

---

## 🧭 Overview

This repository contains a fully hardened, production-grade deployment of `n8n` (workflow automation platform) running on **QNAP NAS with Container Station**, leveraging Docker Compose.

The stack includes:

- ✅ n8n (queue mode enabled, Redis-backed)
- ✅ Redis (for distributed queue execution)
- ✅ Grafana (for dashboards & monitoring)
- ✅ Prometheus (for system metrics)
- ✅ Watchtower (for automatic container updates)
- ✅ Backup automation (daily backups with retention)
- ✅ Docker prune automation (daily cleanup to protect QNAP storage)

---

## ⚙️ Components

| Service   | Port  | Description |
|-----------|-------|-------------|
| n8n       | `5678`| Workflow Automation Engine |
| Redis     | `6379`| Queue Mode Backend |
| Grafana   | `3000`| Dashboards & Visualization |
| Prometheus| `9090`| Metrics Collection |
| Watchtower| `n/a` | Automated Updates |

---

## 📦 Files Included

| File | Purpose |
|------|---------|
| `docker-compose.yml` | Full stack deployment |
| `prometheus.yml` | Prometheus configuration |
| `docker-backup.sh` | Backup script |
| `.env.template` | Environment variable placeholders |
| `CHEAT_SHEET.txt` | Quick sysadmin reference |
| `.gitignore` | GitHub-safe exclusions |
| `LICENSE` | MIT License |
| `CHANGELOG.md` | Version history |

---

## 📂 Deployment Structure (on QNAP NAS)

| Path | Purpose |
|------|---------|
| `/share/Container/docker-compose/n8n-docker/` | Compose files |
| `/share/Container/n8n-data/` | Persistent n8n data |
| `/share/Backups/docker-backups/` | Daily backup storage |

---

## 🔄 Maintenance Automation

| Task | Schedule |
|------|----------|
| Backup | Daily at 2AM |
| Docker Prune | Daily at 3AM |
| Watchtower | Daily at 4AM |

---

## 🚀 Quick Start

```bash
# Navigate to deployment directory
cd /share/Container/docker-compose/n8n-docker/

# Start full stack
docker compose up -d

# Check containers
docker ps
```

---

## ♻️ Recovery

1. Restore backups to `/share/Container/`  
2. Run `docker compose up -d`  
3. Fully restored production environment

---

## 🔐 Notes

- Built & optimized for QNAP NAS with Container Station
- Fully compatible with system-docker socket mapping (`/var/run/system-docker.sock`)
- Persistent storage mapped to safe NAS locations

---

## 📜 License

This project is licensed under the MIT License.

---

## ✨ Future Roadmap

- PostgreSQL database backend for larger n8n workflows
- Reverse proxy with SSL (public endpoints)
- External monitoring exporters (QNAP NAS hardware metrics)
- OAuth or SSO integration
- High-availability worker scaling

---

## 🤝 Contributions

This project was built for internal enterprise automation — but feel free to fork, adapt, or contribute improvements for other QNAP users!

---

## 📧 Support

If you run QNAP Container Station and want to scale up your business automation — feel free to contact me via GitHub Discussions or Issues.

---