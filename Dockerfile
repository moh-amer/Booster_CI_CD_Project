FROM python:latest

WORKDIR /root/django-app
COPY . .
RUN pip3 install -r requirements.txt
RUN python manage.py makemigrations
RUN python manage.py migrate
ENTRYPOINT python manage.py runserver 0.0.0.0:8000
