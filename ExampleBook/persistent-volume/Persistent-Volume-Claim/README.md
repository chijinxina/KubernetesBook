# Persistent Volume Claim #
###### Kubernetes中提供了Persistent Volume和Persistent Volume Claim机制，这是存储消费者模式。Persistent Volume是由系统管理员配置创建的一个数据卷，它代表了某一类存储插件的实现，可以是NFS、iSCSI等；而对于普通用户来说，通过Persistent Volume Claim可以请求合适的Persistent Volume，而无需感知后端存储的实现。 ######
###### Persistent Volum Claim和Persistent Volume的关系类似于Pod和Node，Pod消费Node的资源，Persistent Volume Claim则是消费Persistent Volume的资源，Persistent Volume和Persistent Volume Claim相互关联，有着完整的生命周期管理。 ######
### 使用过程 ###
1. 准备
2. 绑定
3. 使用
4. 释放
5. 回收
