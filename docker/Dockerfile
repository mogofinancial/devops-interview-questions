# You must inherit from ubuntu (no `FROM python`, please)
FROM ubuntu:latest

WORKDIR /app

COPY . .

RUN apt-get update

RUN apt-get install -yq python3
RUN apt-get install -yq python3-pip

RUN pip3 install -r requirements.txt

ENV DEBIAN_FRONTEND="noninteractive"
ENV TZ=America/New_York

RUN apt-get install -yq nano
RUN apt-get install -yq vim

ENV LANG C.UTF-8

CMD ["/app/say"]
