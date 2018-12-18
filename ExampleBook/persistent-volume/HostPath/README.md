# HostPath #
HostPath数据卷允许将容器宿主机上的文件系统挂载到POD中，如果POD需要使用宿主机的某些文件，可以使用HostPath数据卷。
## 例子： POD需要使用宿主机的SSL证书 ##
创建一个POD需要使用宿主机的SSL证书，可以通过创建HostPath数据卷，然后将宿主机的/etc/ssl/certs目录挂载到容器中。
