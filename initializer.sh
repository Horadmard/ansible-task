echo "[INFO] Installing Ansible via APT..."
sudo apt update -y || true
sudo apt install -y software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible || true
sudo apt install -y ansible
echo "[SUCCESS] Ansible installed via APT."
ansible --version