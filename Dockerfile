FROM ubuntu:rolling
RUN apt update
RUN apt-get dist-upgrade -y
RUN apt-get install python3 python3-bcrypt python3-pip python3-passlib -y
RUN python3 -m pip install --upgrade radicale
RUN mkdir /radicale/
RUN echo "mkdir /radicale/{config,data}" |bash
ADD radicale.sh /radicale/
ADD radicale.conf /radicale/config/radicale.conf
RUN useradd -ms /bin/bash radicale
RUN chown radicale:radicale /radicale/ -Rv
USER radicale
RUN chmod +x /radicale/radicale.sh
RUN touch /radicale/config/users
#RUN python3 -m pip install --user --upgrade radicale
#RUN python3 -m pip install --user --upgrade passlib bcrypt
EXPOSE 5232
CMD ["/radicale/radicale.sh"]
