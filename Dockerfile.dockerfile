FROM debian:latest

#install ansible and python pip
RUN apt-get update
RUN apt-get install -y ansible
RUN apt-get install -y python-pip

#get python winrm package
RUN pip install pywinrm

ENTRYPOINT [ "bash" ]