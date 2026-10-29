# Práctica: Automatización de Servidores con Ansible y Docker

Esta práctica demuestra el uso de **Docker** para desplegar un entorno multinodo con contenedores Ubuntu y **Ansible** para automatizar la configuración y el aprovisionamiento de software.

## 🛠️ Requisitos previos
- Docker y Docker Compose instalados.
- Subsistema de Windows para Linux (WSL) con Ubuntu (si trabajas en Windows).
- Ansible y `sshpass` instalados en la terminal.

---

## 🚀 Pasos de Ejecución

### 1. Construir y levantar los servidores con Docker
El entorno consta de 5 servidores Ubuntu configurados con servidor SSH integrado. En la raíz del proyecto, ejecuta:
```bash
sudo docker compose up -d --build

made by: Angel Francisco Rosa Delgado #2025-0014.
