FROM debian:latest
LABEL Description="This image is used to start the python unit test suite" Vendor="VEGA" Version="1.0"

RUN apt-get update && apt-get install -y xvfb python-pip wget tar firefox-esr x11vnc && apt-get clean

WORKDIR /work

COPY ./requirements.txt /work/
RUN pip install --requirement requirements.txt

ENV  GeckodriverDownloadURL='https://github.com/mozilla/geckodriver/releases/download/v0.17.0/geckodriver-v0.17.0-linux64.tar.gz'
RUN wget -v -O geckodriver.tar.gz "$GeckodriverDownloadURL" \ 
    && tar -xzvf geckodriver.tar.gz geckodriver \
    && rm -f geckodriver.tar.gz
ENV PATH /work:$PATH

WORKDIR test
COPY ./test/test_google.py test_google.py

COPY ./runtest.sh /work/
ENTRYPOINT ["/work/runtest.sh"]
CMD ["WithoutParameters"]
