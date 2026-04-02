# Home Server (Ubuntu)

Personal home server used for self-hosting game servers, cloud storage, and remote access.

## Specs

| Component | Details |
|-----------|---------|
| OS | Ubuntu 22.04.5 LTS |
| Kernel | 6.8.0-90-generic |
| CPU | AMD Ryzen 7 3800X |
| GPU | AMD Radeon RX 580 |
| RAM | 32GB DDR4 3200 MHz |
| Motherboard | MSI MPG X570 Gaming Edge WiFi |

## What's Running

- **Minecraft** -- Fabric server managed with systemd, auto-restarts twice daily, includes a New Year countdown script
- **CS2** -- Counter-Strike 2 dedicated server running under a separate `steam` user
- **Palworld** -- Dedicated server with a 24GB memory cap, also under the `steam` user
- **Samba** -- File share for personal cloud storage across devices
- **Plex** -- Media server for streaming
- **SSH** -- Remote access with key-based auth, port forwarded with dynamic DNS via No-IP
- **Neovim** -- Server-side editor config

## Repo Structure

```
HomeServer/
├── configs/
│   ├── bash/
│   │   └── .bashrc
│   ├── netplan/
│   │   └── 01-network-manager-all.yaml
│   └── systemd/
│       ├── minecraft.service
│       ├── minecraft-restart.service
│       ├── minecraft-restart.timer
│       ├── minecraft-newyear-countdown.service
│       ├── minecraft-newyear-countdown.timer
│       ├── palworld.service
│       └── cs2.service
└── nvim/
```

## Highlights

- Static IP assigned via Netplan so the server always gets the same local address
- SSH login displays the last session's location (city + region for external IPs, or "local network" for LAN connections) using ipinfo.io
- Game servers run as systemd services with automatic restarts and memory limits
- Minecraft server restarts daily at 11:59 AM and 11:59 PM via systemd timers
- CS2 and Palworld run under a dedicated `steam` user for isolation
- Dynamic DNS through No-IP for remote access without a static public IP

## Security

This repo does not contain secrets. No private keys, real passwords, tokens, or API keys are included. Local network IPs (192.168.x.x) are present in configs but pose no external risk.
