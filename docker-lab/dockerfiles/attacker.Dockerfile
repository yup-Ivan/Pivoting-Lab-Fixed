FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    nmap \
    iputils-ping \
    net-tools \
    iproute2 \
    proxychains4 \
    hydra \
 && update-ca-certificates \
 && curl -L https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Leaked-Databases/rockyou-05.txt -o /root/rock.txt \
 && rm -rf /var/lib/apt/lists/*


WORKDIR /root
CMD ["/bin/bash"]
