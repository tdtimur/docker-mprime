FROM debian:8

RUN adduser --quiet --shell /bin/bash --gecos "Mprime user,101,," --disabled-password mprime
USER mprime
WORKDIR /home/mprime
ADD http://www.mersenne.org/ftp_root/gimps/p95v2810.linux64.tar.gz mprime.tar.gz
RUN tar xzf mprime.tar.gz && rm -f mprime.tar.gz
ENTRYPOINT ["./mprime"]
