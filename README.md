# PA control center

Stuff that allows deployment/management of PA instance.

## Usage

Replace existing encrypted files with your data:

- roles/tg/files/token.txt - text file with telegram token for TG relay
- inventory/host_vars/tg - parameters for accessing TG relay server:
  - ansible_user
  - ansible_port
  - ansible_host

## Makefile

Instead of directly running the ansible, `make deploy-tg` can be used
to deploy the TG relay server.

## Testing

Playbooks can be tested using [molecule]:

    cd roles/tg
    molecule test

### Systemd cgroup creation

On systems without systemd run the following commands so that
systemd-enabled containers could be started:

    # mkdir /sys/fs/cgroup/systemd
    # mount -t cgroup -o none,name=systemd none /sys/fs/cgroup/systemd

[molecule]: https://molecule.readthedocs.io/en/latest/
