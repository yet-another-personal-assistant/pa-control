deploy-tg:
	ansible-playbook -M tg playbooks/deploy.yml

setup-tg:
	ansible-playbook -M tg roles/tg/molecule/default/prepare.yml

# sudo mkdir /sys/fs/cgroup/systemd
# sudo mount -t cgroup -o none,name=systemd none /sys/fs/cgroup/systemd
test-tg:
	cd roles/tg && molecule test
