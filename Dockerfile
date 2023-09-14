FROM balenalib/rpi-raspbian:latest

RUN apt-get update && apt-get install -y python3 python3-pip

COPY . /app
WORKDIR /app

RUN pip3 install -r requirements.txt

CMD ["python3", "control_led.py"]
