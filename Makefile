deploy:
	ansible-playbook playbooks/deploy.yml

deploy-tg:
	ansible-playbook -l tg playbooks/deploy.yml

setup-tg:
	ansible-playbook -l tg roles/tg/molecule/default/prepare.yml

# sudo mkdir /sys/fs/cgroup/systemd
# sudo mount -t cgroup -o none,name=systemd none /sys/fs/cgroup/systemd
test-tg:
	cd roles/tg && molecule test

deploy-brain:
	ansible-playbook -l localhost playbooks/deploy.yml
