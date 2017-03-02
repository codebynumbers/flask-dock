FROM ubuntu:latest
MAINTAINER Rob Harrigan "harrigan.rob@gmail.com"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential git
COPY . /app
COPY ./.ssh/deploy.key /root/.ssh/id_rsa
COPY ./.ssh/deploy.pub /root/.ssh/id_rsa.pub
WORKDIR /app
RUN pip install -r requirements.txt
RUN ssh-keyscan -H github.com > /etc/ssh/ssh_known_hosts
RUN git config --global user.email "harrigan.rob@gmail.com"
RUN git config --global user.name "Rob Harrigan"

ENTRYPOINT ["/app/run.sh"]
