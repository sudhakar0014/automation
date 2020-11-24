cd /home/ubuntu/
sudo docker build -t "nginx_jsf" .
sudo docker run -itd  -p80:80 --name nginx nginx_jsf

