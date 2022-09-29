# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

ADD . /python-flask
WORKDIR /python-flask
RUN pip install -r requirements.txt