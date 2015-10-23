#!/bin/sh

set -ex

sudo apt-get install -y software-properties-common
sudo add-apt-repository ppa:avsm/ppa
sudo apt-get update
sudo apt-get install -y ocaml ocaml-native-compilers camlp4-extra opam # ocaml

mkdir ~/bin
export PATH=$HOME/bin:$PATH
# sudo apt-get install -y aspcud curl zeroinstall-injector          # 0install
# 0install add opam http://tools.ocaml.org/opam.xml                 # opam

opam init --verbose --auto-setup --yes
opam switch 4.01.0

eval $(opam config env)
