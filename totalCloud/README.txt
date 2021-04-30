Please make sure you have read "prerequisite.txt" file and followed all the instructions carefully.

To run these Scripts Please run below commands:

1. Setup The kubernetes in worker node.
   ansible-playbook -i inventory kube-install-software.yml 
    
2. Setup the Kubernetes cluster in Master node and Join the Worker node.
   ansible-playbook -i inventory kube-setup-cluster.yml

3. Run the Nginx Application 
   kubectl apply -f hello.yml


Accessing the nginx(service)
To know currently running services please run following command
 command:  kubectl get services
   
Output:   
NAME                  TYPE           CLUSTER-IP      EXTERNAL-IP   PORT(S)        AGE
nginx                 LoadBalancer   10.108.29.52    <pending>     80:30343/TCP   140m

Since service is running on port 30343 you can assign DNS names to the EC2 instance ip or  you can use load balancer 
since i have created in public subnet for accessing the applicataion type below in browser
<server_ip>:port


Note: To Know more about the ansible Scripts Please refer to Scripts_explain.txt
