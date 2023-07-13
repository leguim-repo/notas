#  Ansible

Ansible is a suite of software tools that enables infrastructure as code. It is open-source and the suite includes software provisioning, configuration management, and application deployment functionality

## Install process

Install process here in follow link <https://docs.ansible.com/ansible/latest/installation_guide/installation_distros.html#installing-ansible-on-specific-operating-systems>

~~~bash
brew install ansible
~~~

## Create a pair of ssh keys and install in our servers

Creation:

~~~bash
ssh-keygen
~~~

Install in selected server:

~~~bash
ssh-copy-id root@192.168.10.1
~~~

## Create computer inventory

Create a file in `/etc/ansible/hosts` with a content like:

~~~bash
[dev]
192.168.10.1

[prod]
192.168.30.1
~~~

## Basic commands

~~~bash
ansible all -m ping

192.168.10.1 | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python3"
    },
    "changed": false,
    "ping": "pong"
}
192.168.30.1 | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python3"
    },
    "changed": false,
    "ping": "pong"
}
~~~