ansible-playbook -i inventory kube-install-software.yml -K
ansible-playbook -i inventory kube-setup-cluster.yml -K
ansible-playbook -i inventory kube-self-hosted-recovery.yml -K
ansible-playbook -i inventory hello.yml -K
