git config --global --add safe.directory /work
git pull origin
make roles
ansible-playbook -i inventory/hosts setup.yml --tags=install-all,ensure-matrix-users-created,start
