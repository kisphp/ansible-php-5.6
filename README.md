# Ansible Environment Setup

## Setup local server from inside VM

```bash
cd ansible

# only for ubuntu/debian
./install-ansible.sh

ansible-playbook -i env/dev/main.ini setup_local.yml
```

## Install ansible inside VM

```bash
vagrant ssh

cd ansible

./install-ansible.sh
```
