### Hexlet tests and linter status:
[![Actions Status](https://github.com/netwarloq/devops-for-programmers-project-76/workflows/hexlet-check/badge.svg)](https://github.com/netwarloq/devops-for-programmers-project-76/actions)

## Description
[Click to app example](http://netwarlock.ru)

Here is a project on the lesson "Deploy Docker images using Ansible" by a Hexlet cadet (me).
Terraform is used to quickly create infrastructure on DigitalOcean:
- Creating of 3 Droplets (VM)
- Creating a balancer
- Creating database

For the task example, need to run the Redmine in a Docker container using Ansible. 

## Requirments
* Ansible
* make
* Terraform (for start infra on DigitalOcean)

## Instructions

### [Terraform commands (click to README)](terraform/README.md)

### Deploy App
* First need to create a file groups_vars/webservers/vault.yml

```bash 
cd groups_vars/webservers/
cat vault.yml
db_host: <your_database_host> 
db_name: <your_database_name> 
db_user: <your_database_user> 
db_pass: <your_database_password> 
db_port: <your_database_port> 
```

* Then encrypt Vault file for security:
```bash
ansible-encript vault.yml
```

* Specify your servers in inventory.ini
``` bash
cat inventory.ini
[webservers]
web[1:3].your_domain

[webservers:vars]
ansible_user=root
```

* Setup (install requirements)
``` bash
make setup
```

* Deploy
``` bash
make deploy
```

#### Manual check ansible:
``` bash
ansible-playbook -i inventory.ini playbook.yml -t <deploy/datadog/untagged> --ask-vault-pass --check
```
untagged use for setup (install pip/docker)

### Links:
- [Official Ansible documentation](https://docs.ansible.com/)
- [Datadog](https://www.datadoghq.com/)
