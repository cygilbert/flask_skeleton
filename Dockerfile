FROM python:3.6-alpine

RUN adduser -D my_app

WORKDIR /home/my_app

COPY requirements.txt requirements.txt
RUN python -m venv venv
RUN venv/bin/pip install --upgrade pip
RUN venv/bin/pip install -r requirements.txt
RUN venv/bin/pip install gunicorn

COPY app app
COPY my_app.py config.py boot.sh ./
RUN chmod a+x boot.sh

ENV FLASK_APP my_app.py

RUN chown -R my_app:my_app ./
USER my_app

EXPOSE 5000
ENTRYPOINT ["./boot.sh"]