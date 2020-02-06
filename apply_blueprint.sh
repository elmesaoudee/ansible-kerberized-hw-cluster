#!/usr/bin/env bash
export INVENTORY_TO_USE=static && export CLOUD_TO_USE=static

source $(dirname "${BASH_SOURCE[0]}")/set_cloud.sh
source $(dirname "${BASH_SOURCE[0]}")/set_inventory.sh

ansible-playbook "playbooks/apply_blueprint.yml" \
                 --inventory="inventory/${inventory_to_use}" \
                 --extra-vars="cloud_name=${cloud_to_use}" \
                 "$@"
