FROM golang:19.6-alpine

WORKDIR /app

COPY go.mod .
COPY go.sum .
RUN go mod downlod
COPY . . 
run go build -o ./out/dist .
CMD ./out/dist .
