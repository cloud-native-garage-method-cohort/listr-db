FROM postgres:latest

USER root 

RUN mkdir -p /var/lib/postgresql

RUN chgrp root /var/lib/postgresql && chmod g+rwx /var/lib/postgresql