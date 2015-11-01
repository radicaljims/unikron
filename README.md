# unikron
staging area for unikernel materials

(* vagrant kit from: https://github.com/mirage/mirage-vagrant-vms *)

1. Download Virtualbox: https://www.virtualbox.org/wiki/Downloads

2. Install Vagrant

    $ brew tap phinze/cask
    $ brew install brew-cask
    $ brew cask install vagrant

3. Install Packer 

    $ brew tap homebrew/binary
    $ brew install packer

4. Spin up a box

    $ cd xen_environments
    $ make ubuntu-14.04-box
    $ make ubuntu-14.04-vagrant
    $ cd ubuntu-14.04 && vagrant ssh

If VB guest additions don't seem to be working, try:

    $ cd xen_environments/ubuntu-14.04
    $ vagrant plugin install vagrant-vbguest
    $ vagrant reload

To destroy the current vm:

    $ cd xen_environments/ubuntu-14.04
    $ vagrant destroy -f

