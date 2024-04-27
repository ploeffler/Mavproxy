FROM python:latest

RUN pip install --upgrade pip && \
    pip install --upgrade setuptools


RUN pip install --upgrade MAVProxy

RUN mkdir -p "/mavproxy" && \
    mkdir -p /var/log/mavproxy/
WORKDIR /mavproxy
COPY ./app/* .


RUN for script in $(ls ./*.sh) ; do \
        chmod +x ${script} && \
        dest=$(basename $(echo ${script} | sed 's#.sh##g')) && \
        mv -v ${script} /usr/bin/${dest} && \
        echo "SCRIPT: ${script} > /usr/bin/${dest}" >> /var/log/buld.log \
    ; done

ENTRYPOINT [ "run" ]
CMD [ ]