FROM alpine

RUN apk add --no-cache bash ca-certificates curl wget wrk redis
