FROM centos:7
RUN yum update -y && yum install -y wget && wget -O install.sh http://download.bt.cn/install/install_6.0.sh && bash install.sh && chmod -R 777 / 
RUN systemctl stop firewalld && systemctl disable firewalld
EXPOSE 888
EXPOSE 8888
EXPOSE 80
