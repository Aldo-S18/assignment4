FROM fedora:latest

RUN dnf -y update
RUN dnf -y install tuxpaint
RUN dnf -y install vim
RUN dnf -y install httpd

COPY myinfo.html /var/www/html/myinfo.html

EXPOSE 80

ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
