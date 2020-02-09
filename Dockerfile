FROM python:3.6-alpine

LABEL maintainer = "Martijn"

RUN apk add --no-cache \
    gcc \
    git \
    libc-dev \
    libffi-dev \
    libxslt-dev \
    make \
    openssl \
    openssl-dev

RUN git clone https://github.com/mpepping/safaribooks.git /safaribooks

WORKDIR /safaribooks

RUN pip install -r requirements.txt

ENTRYPOINT ["python3", "safaribooks.py"]
