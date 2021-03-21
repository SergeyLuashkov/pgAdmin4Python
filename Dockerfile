FROM python:3

RUN mkdir /var/lib/pgadmin
RUN mkdir /var/log/pgadmin
RUN apt-get update && apt-get install -y expect

RUN pip install pgadmin4

ADD config_local.py /usr/local/lib/python3.9/site-packages/pgadmin4/

ADD pgAdminRun.sh ./
RUN chmod +x ./pgAdminRun.sh
EXPOSE 5050
ENTRYPOINT [ "./pgAdminRun.sh" ]