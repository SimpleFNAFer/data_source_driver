FROM golang:1.16
WORKDIR $GOPATH/src/data_source_driver
COPY . .
RUN go mod download
RUN go build -o main .
EXPOSE 9
CMD ["./main", "es", ":9"]
