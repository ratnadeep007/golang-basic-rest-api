FROM golang:latest
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN go get -d ./... && go build -o main .
EXPOSE 5000
CMD ["/app/main"]