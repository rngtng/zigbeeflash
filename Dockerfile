FROM python:latest

RUN pip install pyserial intelhex python-magic

WORKDIR /root

ARG FW_FILE=firmware.zip
ADD https://github.com/Koenkk/Z-Stack-firmware/raw/master/coordinator/Z-Stack_3.x.0/bin/CC1352P2_CC2652P_launchpad_coordinator_20211217.zip $FW_FILE
RUN unzip $FW_FILE && rm -rf $FW_FILE

ARG CC_FILE=firmware.zip
ADD https://codeload.github.com/JelmerT/cc2538-bsl/zip/master $CC_FILE
RUN unzip $CC_FILE && rm -rf $CC_FILE

ENV ADDR=00124b0018e85c28
