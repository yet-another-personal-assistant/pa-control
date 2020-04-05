# PA control center

Stuff that allows deployment/management of PA instance.

## Components

Currently two roles are defined:

- tg -- Telegram relay server
- brain -- "backend" for the bot

### TG

TG role is currently deployed on a vps and consists of the following
components:

- [xtomp] -- [STOMP] message broker
- [pa-tg] -- telegram-to-stomp relay implemeted in Python
- xtomp-user account that connects directly to xtomp socket using [socat]

In order to avoid installing `git` and full `pip` on the vps most
steps are performed locally.

### Brain

Brain role is currently deployed on a localhost. It consists of a
single Docker container.

## Makefile

Instead of directly running the ansible, `make deploy` can be used
to deploy all the components

## Testing

Playbooks can be tested using [molecule]:

make test-tg

### Systemd cgroup creation

On systems without systemd run the following commands so that
systemd-enabled containers could be started:

    # mkdir /sys/fs/cgroup/systemd
    # mount -t cgroup -o none,name=systemd none /sys/fs/cgroup/systemd

[xtomp]: http://xtomp.tp23.org/
[STOMP]: https://stomp.github.io/
[pa-tg]: https://gitlab.com/personal-assistant-bot/infrastructure/pa-tg
[socat]: https://linux.die.net/man/1/socat
[molecule]: https://molecule.readthedocs.io/en/latest/
