FROM python:3.11

ENV PYTHONUBUFFERED=1

ADD . /usr/src/app


COPY requrement.txt requrement.txt

RUN pip install --upgrade pip


#RUN adduser -D myuser
#USER myuser

RUN pip install -r requrement.txt
#COPY --chown=myuser:myuser requirements.txt requirements.txt
#RUN pip install --user -r requirements.txt

#ENV PATH="/home/myuser/.local/bin:${PATH}"
#COPY --chown=myuser:myuser . .

ENV PIP_ROOT_USER_ACTION=ignore

COPY start-dev.sh start-dev.sh
RUN chmod a+rwx /start-dev.sh

WORKDIR /usr/src/app





