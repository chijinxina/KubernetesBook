# KubernetesBook
Learning Kubernetes with kubeadm

## issue1
+ **coreDNS故障，codeDNS POD -> pending <<<<<**
+ *解决方法：* 
 1. kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
 2. 查看codeDNS POD状态是否为CrashLoopBackOff，为CrashLoopBackOff执行下面操作
+ **coreDNS故障，codeDNS POD -> CrashLoopBackOff**
+ *解决方法：* 
 1. kubectl edit cm coredns -n kube-system
 2. 删除“loop”，保存退出后
 3. 重启coreDNS POD： kubectl delete pod coredns-... -n kube-system

## issue2
+ **dashboard没有权限 XXX is forbidden: User "system:serviceaccount:kube-system:kubernetes-dashboard" cannot list resource "namespaces" in API group "" at the cluster scope**
+ 安装dashboard: kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v1.10.1/src/deploy/recommended/kubernetes-dashboard.yaml
+ *解决方法：* 
 1. kubectl create clusterrolebinding kubernetes-dashboard --clusterrole=admin --serviceaccount=kube-sytem:kubernetes-dashboard
 2. 
 3. 参考博客解决：https://segmentfault.com/a/1190000013681047  http://www.cnblogs.com/linuxk/p/9783510.html

## issue3
+ **nodes上无法启动pod（解除master上不运行pod的限制）**
+ *解决方法：* 
 1. kubectl taint nodes master.k8s node-role.kubernetes.io/master-
 2. master上不运行pod： kubectl taint nodes master.k8s node-role.kubernetes.io/master=:NoSchedule


