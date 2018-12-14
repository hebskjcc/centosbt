FROM centos:7
MAINTAINER hebskjcc
RUN yum update -y && cd /
ADD install.sh /
RUN bash install.sh
RUN chmod -R 777 /
RUN systemctl stop firewalld && systemctl disable firewalld
EXPOSE 888
EXPOSE 8888
EXPOSE 80
