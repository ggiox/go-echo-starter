# Get the lastest golang base image
FROM golang:latest

RUN mkdir /app

ADD . /app

WORKDIR /app

EXPOSE 1323

# Build the Go app
#RUN go build -o app/main .

#CMD ["./app/main"]

