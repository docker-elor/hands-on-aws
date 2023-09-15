#use ubuntu as base image
FROM ubuntu:20.04
#Set aworking Dir
WORKDIR /app
#install python 3 and python 3 pip
RUN atp-get update && \
    apt-get install -y python3 python3-pip
CMD ["python3","app.py"]
