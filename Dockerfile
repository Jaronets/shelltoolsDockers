#IMAGEN ROGER GBB TEST
FROM debian
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install apt-utils -y
RUN apt-get install -y net-tools
RUN apt-get install -y vim
RUN apt-get install -y openssh-client
RUN apt-get install -y nfs-common
RUN apt-get install -y openssh-server
RUN apt-get install -y sudo
RUN apt-get install -y apache2
RUN apt-get clean
#COPY passwd /etc/passwd
#COPY shadow /etc/shadow
RUN systemctl start ssh
RUN systemctl start apache2
RUN systemctl status apache2
WORKDIR /etc/nginx
EXPOSE 80 443
ENTRYPOINT ["/etc/nginx/docker-entrypoint.
