FROM ubuntu:18.04
RUN apt-get update && apt-get install -y python3 python3-pip git
RUN git clone https://github.com/senko/tornado-proxy.git
WORKDIR tornado-proxy
RUN pip3 install -r requirements.txt
CMD ['python', 'setup.py']
