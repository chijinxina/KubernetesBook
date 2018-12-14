# KubernetesBook
Learning Kubernetes with kubeadm

## issue1
+ coreDNS故障，codeDNS POD -> crashLoop
+ *解决方法：* 
 1. kubectl edit cm coredns -n kube-system
 2. 删除“loop”，保存退出后
 3. 重启coreDNS POD： kubectl delete pod coredns-... -n kube-system

## issue2
+ dashboard没有权限
+ *解决方法：* 
 1. kubectl create clusterrolebinding kubernetes-dashboard --cluster-admin --serviceaccount=kube-sytem:kubernetes-dashboard

##


