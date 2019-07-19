FROM golang:alpine3.10

WORKDIR /go/src/sum
COPY ./src/sum .

RUN go install -v ./...

CMD ["sum"]

FROM golang:alpine3.10

WORKDIR $GOPATH/src/sum/main/
COPY ./src/sum .

RUN go get -d -v
RUN go build -o /go/bin/sum -ldflags "-s -w"

FROM scratch
COPY --from=0 /go/bin/sum /sum
ENTRYPOINT ["/sum"]
