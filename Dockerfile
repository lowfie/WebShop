FROM python:3.10.6

EXPOSE 8000

WORKDIR /usr/src/app

COPY . .

RUN apt update \
    && apt upgrade -y \
    && pip install --upgrade pip \
    && pip install -r requirements.txt
