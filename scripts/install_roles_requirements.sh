#!/bin/bash

msg_exit() {
  COLOR_END='\e[0m'
  COLOR_RED='\e[0;31m'
  printf "$COLOR_RED$@$COLOR_END"
  printf "\n"
  printf "Exiting...\n"
  exit 1
}

# PROJECT 1 level (..) up
export PROJECT_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )"/.. && pwd )"
ROLE_REQUIREMENTS_FILE=$PROJECT_ROOT/roles/role_requirements.yml

# CHECK
[[ -z "$(which ansible-galaxy)" ]] && msg_exit "Ansible galaxy not installed!"
[[ -f $ROLE_REQUIREMENTS_FILE ]] && msg_exit "Ansible requirements not found in:" $ROLE_REQUIREMENTS_FILE

ansible-galaxy install -r $ROLE_REQUIREMENTS_FILE
