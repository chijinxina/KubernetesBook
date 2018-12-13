#!/bin/bash

apt-get update && apt-get install -y apt-transport-https

curl https://mirrors.aliyun.com/kubernetes/apt/doc/apt-key.gpg | apt-key add - 

apt-get update
apt-get install -y kubelet kubeadm kubectl
