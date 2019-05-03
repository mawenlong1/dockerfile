# redis 容器
FROM centos:6.9
MAINTAINER  mlwjndx@163.com
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

#安装YUM源
RUN yum -y update && \
yum -y install epel-release && \
yum -y install redis && \
yum -y install net-tools

#设置对外主机连接端口号
EXPOSE 6377


#安装清理缓存文件
RUN yum clean all

#关闭保护模式
RUN sed -i -e 's@protected-mode yes@protected-mode no@g' /etc/redis.conf
#设置密码
RUN echo "requirepass 123456" >> /etc/redis.conf
#启动
ENTRYPOINT [ "/usr/bin/redis-server","/etc/redis.conf"]
CMD []