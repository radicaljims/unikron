# unikron
staging area for unikernel materials

(* vagrant kit from: https://github.com/mirage/mirage-vagrant-vms *)

1. Download Virtualbox: https://www.virtualbox.org/wiki/Downloads
2. Install Vagrant (brew install vagrant, for example)
2a. Install vagrant-vbguest plugin: vagrant plugin install vagrant-vbguest
3. cd xen_envrionments/ubuntu-14.04
4. vagrant destroy -f && vagrant up && vagrant ssh

