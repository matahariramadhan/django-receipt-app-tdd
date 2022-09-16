FROM python:3.7-alpine

ENV PYTHONBUFFERED 1

COPY ./requirement.txt /requirement.txt
RUN pip install -r requirement.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

# RUN adduser -D user
# USER user
