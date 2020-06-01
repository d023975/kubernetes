#!/bin/bash
#Set Up microk8s
#https://microk8s.io/docs
#Install MicroK8s
sudo snap install microk8s --classic
#add your current user to the group and gain access to the .kube caching director
sudo usermod -a -G microk8s $USER
sudo chown -f -R $USER ~/.kube
#re-enter the session for the group update to take place
su - $USER
#Check the status
microk8s status --wait-ready