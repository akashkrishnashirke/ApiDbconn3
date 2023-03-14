FROM python:3.11

ENV PYTHONUBUFFERED=1

ADD . /usr/src/app


COPY requrement.txt requrement.txt

RUN pip install --upgrade pip

RUN pip install -r requrement.txt

COPY start-dev.sh start-dev.sh
RUN chmod +x /start-dev.sh

WORKDIR /usr/src/app





