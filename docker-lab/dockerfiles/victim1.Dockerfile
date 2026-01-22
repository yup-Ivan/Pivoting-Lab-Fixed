FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
    ca-certificates \
    wget \
    python3 \
    python3-pip \
    build-essential \
    python3-dev \
    libssl-dev \
    libffi-dev \
    iputils-ping \
 && update-ca-certificates \
 && rm -rf /var/lib/apt/lists/*


WORKDIR /opt

RUN wget -O sar2html.tar.gz \
    https://master.dl.sourceforge.net/project/sar2html/sar2html-4.0.0.tar.gz \
    && tar -xvf sar2html.tar.gz \
    && rm sar2html.tar.gz

WORKDIR /opt/sar2html-4.0.0
RUN pip3 install --no-cache-dir -r requirements.txt \
    && chmod +x startWeb

EXPOSE 8000
CMD ["./startWeb"]
