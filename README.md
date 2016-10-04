https://adamcod.es/2014/09/23/vagrant-ansible-quickstart-tutorial.html

# setup local server from inside VM

```bash
cd ansible

# only for ubuntu/debian
./install-ansible.sh

ansible-playbook -i env/dev/main.ini setup_local.yml
```

