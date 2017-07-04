#
# logs-downloader web server
#
FROM python:2.7.13
LABEL vendor="KDDI Web Communications inc." \
    maintainer="yuto.yamada@kddi-web.com"

# module
RUN apt-get update && apt-get install -y \
    python-m2crypto \
    --no-install-recommends && rm -rf /var/lib/apt/lists/*

WORKDIR /www/logs-downloader

# exec after container run
COPY ./docker-entrypoint.sh /usr/local/bin/
RUN chmod 755 /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["python", "script/LogsDownloader.py", "-c", "/www/logs-downloader/config"]
# CMD ["tail", "-f", "/dev/null"]
