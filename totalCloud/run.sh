ansible-playbook -i inventory.yml kube-install-software.yml 
ansible-playbook -i inventory.yml kube-setup-cluster.yml 
ansible-playbook -i inventory.yml kube-self-hosted-recovery.yml 
ansible-playbook -i inventory.yml hello.yml 
