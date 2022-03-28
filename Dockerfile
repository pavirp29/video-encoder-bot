FROM python:3-slim-buster

RUN mkdir -p /app
WORKDIR /app
RUN chmod 777 /app

RUN apt-get -qq update && apt-get -qq install -y ffmpeg

COPY . .
RUN pip3 install --no-cache-dir -r requirements.txt
CMD python3 -m bot
