FROM heroku/heroku:18

RUN apt-get update && apt-get install -y n2n && apt-get clean && rm -rf /var/lib/apt/lists/*

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD /entrypoint.sh

