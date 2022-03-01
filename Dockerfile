FROM python:3.10
EXPOSE 8080

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r requirements.txt && pip check

COPY run.sh /usr/src/app/
CMD ["/usr/src/app/run.sh"]
