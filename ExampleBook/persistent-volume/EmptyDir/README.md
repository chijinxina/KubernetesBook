# EmptyDir #
EmptyDir是在POD创建的时候新建的一个目录，如果POD配置了EmptyDir数据卷，在POD的生命周期内都会存在，当POD被分配到Node上的时候，会在Node上创建EmptyDir数据卷，并挂载到POD的容器中。只要POD存在，EmptyDir数据卷都会存在(容器删除不会导致EmptyDir数据卷丢失数据)，但是如果POD的生命周期结束，EmptyDir数据卷也会被删除，并且永久丢失。
EmptyDir数据卷非常适合实现POD内容器的文件共享。
## 例子： 日志收集器 ##
创建一个POD，POD中包含两个容器，容器syntheic-logger写日志到/var/log目录，而容器sidecar-log-controller负责收集/var/log目录下的日志文件，然后导出的Elasticsearch，其中的/var/log目录就是一个EmptyDir数据卷，分别挂载到两个容器中，从而实现文件共享。
