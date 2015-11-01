# unikron
staging area for unikernel materials

(* vagrant kit from: https://github.com/mirage/mirage-vagrant-vms *)

Download Virtualbox: https://www.virtualbox.org/wiki/Downloads

Install Vagrant:

    $ brew tap phinze/cask
    $ brew install brew-cask
    $ brew cask install vagrant

Install Packer: 

    $ brew tap homebrew/binary
    $ brew install packer

Spin up a box:

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

