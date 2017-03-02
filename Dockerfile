FROM ubuntu:latest
MAINTAINER Rob Harrigan "harrigan.rob@gmail.com"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential git
COPY . /app
COPY ./.ssh /root/
WORKDIR /app
RUN pip install -r requirements.txt
RUN ssh-keyscan -H github.com > /etc/ssh/ssh_known_hosts
ENTRYPOINT ["/app/run.sh"]
