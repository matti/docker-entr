FROM ubuntu:18.04 as builder
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
  bash wget build-essential

RUN apt-get update && apt-get install -y \
  git

WORKDIR /
RUN git clone https://github.com/eradman/entr.git /source

WORKDIR /source
RUN wget http://eradman.com/entrproject/patches/entr-3.9-docker
RUN patch -p1 < entr-3.9-docker
RUN ./configure
RUN make

FROM scratch
COPY --from=builder /source/entr /entr
