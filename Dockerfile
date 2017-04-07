FROM python:3-alpine
EXPOSE 8080

# Requirements to compile hiredis
RUN apk add gcc musl-dev --no-cache

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r requirements.txt

# Temporary fix until a celery release is available incorporating
# https://github.com/celery/celery/pull/3950
COPY patches/celeryv4_flower_fix.patch /tmp/
RUN cd /usr/local/lib/python3.6/site-packages/celery \
 && patch -p1 < /tmp/celeryv4_flower_fix.patch

COPY run.sh /usr/src/app/
CMD ["/usr/src/app/run.sh"]
