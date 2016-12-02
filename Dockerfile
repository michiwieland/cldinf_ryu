FROM ubuntu:yakkety

RUN apt-get update && apt-get -y install python python-pip mininet

ADD requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

RUN mkdir /root/mininet/

WORKDIR /root/mininet/
CMD ["/bin/bash"]
