#!/usr/bin/env bash

[[ "${1}" == "restart" ]] && ansible --become --inventory inventory/ewidencja.yaml all --module-name ansible.builtin.reboot --args "reboot_timeout=30"
[[ "${1}" == "wyl" ]] && ansible --become --inventory inventory/ewidencja.yaml all --module-name community.general.shutdown
[[ "${1}" == "ping" ]] && ansible --inventory inventory/ewidencja.yaml all --module-name ping
[[ "${1}" == "info" ]] && ansible --inventory inventory/ewidencja.yaml all --module-name ansible.builtin.setup

exit 0