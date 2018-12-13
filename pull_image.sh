#! /bin/bash

images=(
"kube-proxy-amd64:v1.13.0"
"kube-controller-manager-amd64:v1.13.0"
"kube-scheduler-amd64:v1.13.0"
"kube-apiserver-amd64:v1.13.0"
"kubernetes-dashboard-amd64:v1.8.3"
"coredns:1.1.3"
"etcd-amd64:3.2.18"
"pause:3.1"
)
for image in ${images[@]}
do
    docker pull k8s.gcr.io/$image
done
