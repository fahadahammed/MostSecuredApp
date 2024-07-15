FROM python:3.12.1-bookworm

RUN mkdir /opt/MyApp
WORKDIR /opt/MyApp

COPY myapp.py /opt/MyApp
COPY requirements.txt /opt/MyApp

RUN apt-get update && apt-get upgrade -y && apt-get install curl telnet -y

RUN pip install -r requirements.txt

CMD ["python3", "app.py"]