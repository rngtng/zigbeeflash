FROM python:latest

RUN pip install pyserial intelhex python-magic

WORKDIR /root

ARG FILE=download.zip
ADD https://github.com/Koenkk/Z-Stack-firmware/raw/master/coordinator/Z-Stack_3.x.0/bin/CC1352P2_CC2652P_launchpad_coordinator_20211217.zip $FILE
RUN unzip $FILE && rm -rf $FW_FILE

ADD https://codeload.github.com/JelmerT/cc2538-bsl/zip/master $FILE
RUN unzip $FILE && rm -rf $FILE

ENV ADDR=00124b0018e85c28
