echo "[INFO] Installing Ansible via APT..."
sudo apt update -y || true
sudo apt install -y software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible || true
sudo apt install -y ansible
echo "[SUCCESS] Ansible installed via APT."
ansible --version


# echo "[INFO] Installing Ansible via Python..."
# python3 -m venv venv
# echo "[INFO] Please source the python virtual environment."
# # source venv/bin/activate
## ---
# pip3 install -r requirements.txt
## ansible --version