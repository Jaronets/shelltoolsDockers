#IMAGEN ROGER
FROM debian
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install apt-utils -y
RUN apt-get install -y net-tools
RUN apt-get install -y vim
RUN apt-get install -y openssh-client
RUN apt-get install -y nfs-common
RUN apt-get install -y openssh-server
RUN apt-get install -y sudo
RUN apt-get clean
#COPY passwd /etc/passwd
#COPY shadow /etc/shadow
#RUN /etc/init.d/ssh start
