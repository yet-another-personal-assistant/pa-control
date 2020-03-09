#!/bin/sh
exec pass show pa/ansible-vault | sed 1q
