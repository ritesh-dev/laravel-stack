<h1 align="center">Dynamic Laravel Stack</h1>

<p align="center">
  <img src="https://img.shields.io/badge/Laravel-Latest-red?logo=laravel" alt="Laravel">
  <img src="https://img.shields.io/badge/PHP-Dynamic-blue?logo=php" alt="PHP">
  <img src="https://img.shields.io/badge/Docker-Compose-2496ED?logo=docker" alt="Docker Compose">
</p>

> **A self‑updating, production‑ready Laravel <sup>+ MySQL + Redis + Nginx + Node + Opcache</sup> stack.**
> <br>Clone it 🡒 run two commands 🡒 enjoy the **latest** versions every time.

---

## ✨ Features

| 🛠  | What you get |
|-----|--------------|
| **Evergreen images** | PHP‑FPM, Nginx, MySQL, Redis & Node always pull the **newest GA tag**. |
| **One‑shot init**   | `make init` installs a **fresh Laravel** and writes an `.env`. |
| **CI auto‑refresh** | GitHub Actions bumps container tags daily. |
| **Lean Alpine build** | < 150 MB total footprint. |
| **Makefile UX**     | Friendly `make up`, `make shell`, `make refresh-tags`, … |
| **Zero vendor lock**| Everything is vanilla Docker & bash – no custom CLI. |

---

## 🚀 Quick start

```bash
# 1. Clone
 git clone https://github.com/ritesh-dev/laravel-stack.git
 cd dynamic-laravel-stack

# 2. Initialise (fresh Laravel + latest tags)
 make init

# 3. Fire it up
 docker compose up -d

# 4. First‑time Laravel boot
 docker compose exec app php artisan key:generate