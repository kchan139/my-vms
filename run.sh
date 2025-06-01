#!/bin/bash
set -e

if [ ! -d "venv" ]; then
  python3 -m venv venv
fi
source venv/bin/activate

pip install -r requirements.txt

ansible-playbook -i inventory.ini configure_ubuntu_vms.yml \
    --private-key ~/.ssh/ansible_id_ed25519 \
    --ask-vault-pass

