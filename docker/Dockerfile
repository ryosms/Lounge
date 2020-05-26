FROM golang:1.14 as builder
LABEL maintainer="ryosms <ryo.sms@gmail.com>"

WORKDIR /yukizuri
COPY yukizuri /yukizuri

RUN mkdir -p /yukizuri/out \
    && go get github.com/jessevdk/go-assets-builder \
    && make build \
    && cp -r css/ fonts/ images/ js/ plugins/ yukizuri.bin /yukizuri/out


FROM ubuntu:20.04

WORKDIR /yukizuri
COPY --from=builder /yukizuri/out /yukizuri

EXPOSE 8080
CMD [ "/yukizuri/yukizuri.bin" ]
