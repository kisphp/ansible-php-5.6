VM_IP = '10.10.0.60'
VM_NAME = 'ansible.local'
VM_RAM = 1200
VM_CPUS = 4
SYNC_TYPE = 'nfs'
SSH_PORT = 10060

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    #config.vm.box = "ubuntu/xenial64" # ubuntu 16
    config.vm.box = "ubuntu/trusty64" # ubuntu 14
    config.vm.hostname = VM_NAME
    config.vm.synced_folder "./ansible", "/home/vagrant/ansible", type: SYNC_TYPE
    config.vm.synced_folder "./server", "/home/vagrant/server", type: SYNC_TYPE, create: true
    config.nfs.map_uid = Process.uid
    config.nfs.map_gid = Process.gid
    config.vm.network :private_network, ip: VM_IP
    config.vm.network :forwarded_port, guest: 22, host: SSH_PORT, id: 'ssh'
    config.vbguest.auto_update = false

    config.vm.provision :ansible do |ansible|
        ansible.playbook = "ansible/setup_server.yml"
    end

    config.vm.provider :virtualbox do |vb|
        #vb.name = VM_NAME
        vb.customize([
            "modifyvm", :id,
            "--memory", VM_RAM,
            "--cpus", VM_CPUS,
            "--vram", 32
        ])
    end

end
