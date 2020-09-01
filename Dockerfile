# 以最新的Ubuntu镜像为模板
FROM ubuntu:latest



RUN apt-get clean && apt-get update
RUN apt-get install -y openssh-server
RUN apt-get install -y net-tools
RUN apt-get install -y vim
RUN apt-get -y install build-essential asciidoc binutils bzip2 gawk gettext git libncurses5-dev patch unzip lib32gcc1 libc6-dev-i386 subversion flex node-uglify gcc-multilib g++-multilib p7zip p7zip-full msmtp libssl-dev texinfo libglib2.0-dev xmlto qemu-utils  libelf-dev autoconf automake libtool autopoint device-tree-compiler libuv1-dev python3.6 zlib1g-dev upx-ucl node-uglify antlr3 gperf wget swig rsync
RUN mkdir -p /var/run/sshd
RUN mkdir -p mkdir /root/.ssh/
ADD authorized_keys /root/.ssh/authorized_keys
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config

EXPOSE 22

CMD /usr/sbin/sshd -D &
