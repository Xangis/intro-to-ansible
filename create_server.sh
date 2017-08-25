#!/bin/bash
# Runs the initial setup Ansible playbooks on a remote server.
# Note that the user has to have NOPASSWD sudo privileges.
ansible-playbook -f 4 tools.yaml
ansible-playbook -f 4 python.yaml
ansible-playbook -f 4 postgresql.yaml
ansible-playbook -f 4 nodejs.yaml
# When updating the app on an existing server, this is the only playbook you should need to run.
ansible-playbook -f 4 deployapp.yaml
