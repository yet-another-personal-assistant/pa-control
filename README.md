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
