# become root
sudo su

# install vim, git
sudo apt-get install vim git -y

# install ansible
sudo apt-get update
sudo apt-get install -y software-properties-common python-keyczar
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update
sudo apt-get install -y ansible
ansible --version

# download vagrant
wget https://releases.hashicorp.com/vagrant/1.8.6/vagrant_1.8.6_x86_64.deb

# install vagrant
sudo dpkg -i vagrant_1.8.6_x86_64.deb

# download virtualbox
wget http://download.virtualbox.org/virtualbox/5.0.26/virtualbox-5.0_5.0.26-108824~Ubuntu~trusty_amd64.deb

# install virtualbox
sudo dpkg -i virtualbox-5.0_5.0.26-108824~Ubuntu~trusty_amd64.deb

# install vagrant vbguest
vagrant plugin install vagrant-vbguest

# install NFS support
sudo apt install nfs-kernel-server

# glone git repository on desktop
git clone git@github.com:kisphp/ansible-php-5.6.git ~/Desktop/www

# go to project directory
cd ~/Desktop/www

# run vagrant up
vagrant up
