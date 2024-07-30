FROM ubuntu

WORKDIR /app

RUN useradd devops

COPY --chown=nayems:nayems README.md Networking.txt ./

ADD *.txt ./

ADD https://gist.githubusercontent.com/mredulorfiaz/9ae739cbc1c1b854a0e7389dfa74db6a/raw/9e49cb0b7f64e4bd893b5b2128093a5a5ba46b81/docker_wrapper.py .

COPY --chown=mredul:mredul ./services/*.py ./

ADD --checksum=sha256:89680f4ebb3f6e0a199be4ed416701fa167aad8f86111c87a3db9207b5d56baa https://nodejs.org/dist/v20.10.0/node-v20.10.0.tar.gz .
