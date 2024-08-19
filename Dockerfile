FROM --platform=linux/amd64 python:3.9-slim-buster as build

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY app.py .

EXPOSE 8080

CMD [ "python3", "app.py" ]