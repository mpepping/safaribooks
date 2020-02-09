FROM python:latest

RUN git clone https://github.com/mpepping/safaribooks.git /safaribooks

WORKDIR /safaribooks

RUN pip3 install -r requirements.txt

ENTRYPOINT ["python3", "safaribooks.py"]
