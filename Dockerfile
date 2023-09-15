#use ubuntu as base image
FROM ubuntu:20.04
#Set aworking Dir
WORKDIR /app
#install python 3 and python 3 pip unzip
RUN apt-get update && \
    apt-get install -y python3 python3-pip unzip
ADD https://group5-braincells.s3.amazonaws.com/python-web-app.zip .
RUN unzip python-web-app.zip
RUN rm -rf python-web-app.zip
RUN cp -r ./python-web-app/devops/* .
EXPOSE 8000
ENTRYPOINT ["python3", "manage.py"]
CMD ["runserver", "0.0.0.0:8000"]
