FROM centos:7

ENV http_proxy http://9.196.117.29:3128
ENV https_proxy http://9.196.117.29:3128

ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

RUN yum check-update; \
    yum install -y gcc libffi-devel python3 epel-release; \
    yum install -y python3-pip; \
    yum install -y wget; \
    yum clean all
