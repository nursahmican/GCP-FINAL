FROM python:3.10.9-slim

COPY . /app
WORKDIR /app

#RUN python3 -m venv /opt/venv

RUN pip install pip --upgrade
RUN pip install -r requirement.txt
RUN python manage.py migrate --noinput


CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]


