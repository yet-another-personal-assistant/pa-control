deploy-tg:
	ansible-playbook -M tg playbooks/deploy.yml

setup-tg:
	ansible-playbook -M tg roles/tg/molecule/default/prepare.yml
