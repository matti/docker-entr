FROM ubuntu:18.04

RUN apt-get update && apt-get install -yq --no-install-recommends \
  bash

COPY --from=mattipaksula/entr:ubuntu /entr /usr/bin

WORKDIR /app
COPY app .

ENTRYPOINT ["/app/entrypoint.sh"]
