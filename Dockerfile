FROM python:3.8-slim-buster
WORKDIR /BMI-Calculator
RUN apt-get update \
    && apt-get -y install --reinstall build-essential \
    && apt-get install -y gcc python-opencv 
RUN pip3 install --upgrade pip
COPY requirements.txt requirements.txt
RUN pip3 install wheel
RUN pip3 install -r requirements.txt
COPY . /python-docker
CMD ["python3", ".\calculator.py"]
