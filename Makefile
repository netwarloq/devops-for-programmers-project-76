setup:
	ansible-galaxy install -r requirements.yml 
	ansible-playbook -i inventory.ini playbook.yml -t untagged --ask-vault-pass

deploy:
	ansible-playbook -i inventory.ini playbook.yml -t deploy --ask-vault-pass