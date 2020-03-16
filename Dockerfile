FROM python:latest

COPY . /safaribooks

WORKDIR /safaribooks

RUN pip3 install -r requirements.txt

ENTRYPOINT ["python3", "safaribooks.py"]
