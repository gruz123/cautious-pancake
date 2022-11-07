# cautious-pancake

TESTWORK
=========

Disclaimer
----------------
Only for testing purposes on the local machine and to get familiar with the used stack of the technologies. 
The repo is not for production use.
------------------

Description
------------
This repo contains Vagrantfile, ansible playbook and related roles for deploying virtual machine
Debian with Docker (+ portainer) + openvpn

it's automaticaly send openvpn.conf to telegram
(For no reason. At all)

Requirements
------------

On host machine must be installed
* [Vagrant](https://www.vagrantup.com/)
* [Ansible](https://www.ansible.com/)
* [LibVirt](https://libvirt.org/)
* [VirtualBox](https://www.virtualbox.org/)

How to use
----------------

In terminal:

    $ git clone https://github.com/gruz123/cautious-pancake.git
    $ cd cautious-pancake
    
    Set your telegram chat id and bot token in tlg-snd/files/tlg-snd.sh 

    chatId=<Your_tg_chant_id> 
    botToken=<Your_tg_bot_token>
    
    $ vagrant plugin install libvirt
    $ vagrant up

After finishing, portainer is available by URL [http://127.0.0.1:9443](http://127.0.0.1:9443) on the host machine.

To delete the virtual machine, enter command (you must be at the same level as the Vagrantfile):

    $ vagrant destroy
    
To log in to the virtual machine via ssh use command (you must be at the same level as the Vagrantfile):

    $ vagrant ssh

