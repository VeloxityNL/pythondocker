FROM python:3.8-slim-buster
ENV PYTHONUNBUFFERED=1
WORKDIR /home/container container

COPY requirements.txt /home/container/requirements.txt
RUN pip3 install -r /home/container/requirements.txt

COPY . .

CMD [ "python3", "/home/container/runserver.py"]
