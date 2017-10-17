FROM python:3-alpine
MAINTAINER Datawire <dev@datawire.io>

WORKDIR /service
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . ./

EXPOSE 5000
ENTRYPOINT ["python3", "qotm/qotm.py"]
