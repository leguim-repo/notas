FROM python:alpine3.7
RUN mkdir /app
WORKDIR /app
COPY ./app/requeriments.txt /app/
RUN pip3 install --upgrade pip
RUN pip install -r /app/requeriments.txt
EXPOSE 5000
VOLUME /app
CMD export FLASK_APP=/app/index.py; flask run --host 0.0.0.0

