#FROM python:3.11

#ENV PYTHONUBUFFERED=1

#ADD . /usr/src/app


#COPY requrement.txt requrement.txt

#RUN pip install --upgrade pip


#RUN pip install -r requrement.txt

#COPY start-dev.sh start-dev.sh
#RUN chmod a+rwx /start-dev.sh

#WORKDIR /usr/src/app




FROM python:3.11

RUN pip install --upgrade pip

RUN adduser -D myuser
USER myuser
WORKDIR /home/myuser

COPY --chown=myuser:myuser requrement.txt requrement.txt
RUN pip install --user -r requrement.txt

COPY --chown=myuser:myuser start-dev.sh start-dev.sh
RUN chmod a+rwx /start-dev.sh

ENV PATH="/home/myuser/.local/bin:${PATH}"

COPY --chown=myuser:myuser . .

WORKDIR /usr/src/app



