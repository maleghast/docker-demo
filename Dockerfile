from python:3.10.2-slim-buster

ARG user=appuser
ARG group=appuser
ARG uid=1000
ARG gid=1000

RUN groupadd -g ${gid} ${group} && useradd -u ${uid} -g ${group} -s /bin/sh ${user} -m

USER ${uid}:${gid} 

EXPOSE 8080
WORKDIR /app
COPY . .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
CMD ["python", "./example.py"]


