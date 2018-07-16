FROM alpine

RUN apk add --no-cache bash ca-certificates curl wget wrk redis

ADD    aws-load-test /
CMD    ["/aws-load-test"]
