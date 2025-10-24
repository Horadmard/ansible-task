# DevOps Task — Ansible-based server provisioning
## Summary
This project provisions an Ubuntu Server: full system update, Docker install & data-root change to /data/docker, set custom Docker registry(arvanCloud), and GPU driver install if NVIDIA GPU present.

## How to run

```bash
chmod +x ./initializer.sh
./initializer.sh
## source your terminal
## you can now use ansible commands
```

1. Fill inventory/hosts.yml with server IP and user.
2. Run: `ANSIBLE_STDOUT_CALLBACK=debug ansible-playbook playbooks/play.yml | tee ansible_run_1.log`
3. Run again to verify idempotence: `ansible-playbook playbooks/play.yml | tee ansible_run_2.log`

## Verification
- `docker info | grep "Docker Root Dir"` => `/data/docker`
- `curl -s http://localhost:5000/v2/_catalog`
- If GPU: `nvidia-smi`

