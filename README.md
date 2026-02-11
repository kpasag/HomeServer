# Home Server (Ubuntu)

Personal home server used for self-hosting game servers, cloud storage, and remote access.

## Highlights
- Remote access via SSH (port forwarded) with key-based auth
- Dynamic DNS using No-IP
- Samba file share for personal cloud
- Game servers:
  - Minecraft
  - Counter-Strike 2 (CS2)
  - Rust
  - Palworld
- Service management with systemd (services + timers)
- Lightweight tooling: Neovim, Python, Java 21

## Quick Links
- Docs:
  - [Overview](docs/overview.md)
  - [Hardware](docs/hardware.md)
  - [Networking](docs/networking.md)
  - [SSH](docs/ssh.md)
  - [No-IP Dynamic DNS](docs/dns-noip.md)
  - [Samba](docs/samba.md)
  - [Game Servers](docs/game-servers.md)
  - [systemd](docs/systemd.md)
  - [Maintenance](docs/maintenance.md)
  - [Troubleshooting](docs/troubleshooting.md)
  - [Security Notes](docs/security.md)

## Repo Notes (Security)
This repo does not contain secrets:
- No private keys
- No real IPs, hostnames, domains, tokens, or passwords
- Example configs live in `configs/examples/`

## What I learned building this
- Linux service management (systemd units, timers, logs)
- Networking fundamentals (port forwarding, DNS, firewall rules)
- Reliability habits (restarts, backups, monitoring checks)
- Practical troubleshooting (logs, process inspection, resource usage)

## Tech
- OS: Ubuntu 22.04.5 LTS
- Kernel: 6.8.0-90-generic
- CPU: Ryzen 7 3800X
- GPU: Radeon RX 580
- RAM: 32GB DDR4 3200 MHz
