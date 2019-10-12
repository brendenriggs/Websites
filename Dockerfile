FROM tiangolo/uwsgi-nginx-flask:python3.6-alpine3.7
RUN apk --update add bash nano
ENV STATIC_URL /static
ENV STATIC_PATH /var/www/Webites/app/static
COPY ./requirements.txt /var/www/Websites/requirements.txt
RUN pip install -r /var/www/Websites/requirements.txt