FROM alpine:3.21

WORKDIR /app


RUN apk add --no-cache curl tar jq

ARG TARGETARCH

RUN curl -O -L https://github.com/b4iterdev/Spark/releases/latest/download/server_linux_${TARGETARCH}.tar.gz

RUN tar -xvf server_linux_$TARGETARCH.tar.gz -C /app/

RUN mv server_linux_$TARGETARCH server
    
RUN chmod +x server
ENTRYPOINT ["/app/server"]

