FROM python:3.6.10-slim-stretch

COPY lang /app/lang/
COPY requirements.txt /app/
RUN pip install -r /app/requirements.txt
WORKDIR /app

COPY *.* /app/

CMD python bot.py
