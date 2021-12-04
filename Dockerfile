# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

ADD . /test-app
WORKDIR /test-app

COPY . .

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0", "--port=3000"]