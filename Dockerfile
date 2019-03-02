FROM python:3.6.6

ENV LC_ALL C.UTF-8
ENV LANG   C.UTF-8

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y bash python3 python3-pip python3-dev && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

COPY requirements.txt /tmp
COPY hoge.txt /tmp
RUN pip install --upgrade pip
RUN pip3 install -r /tmp/requirements.txt

COPY . /work
WORKDIR /work
# Install jupyter lab extension
RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -
RUN apt-get install -y nodejs
RUN jupyter labextension install @jupyterlab/toc
