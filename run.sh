ansible-playbook -i inventory.ini configure_ubuntu_vms.yml \
    --private-key ~/.ssh/ansible_id_ed25519 \
    --ask-vault-pass

