FROM golang:latest

WORKDIR /app

COPY go.mod /app/

RUN go mod download

COPY main.go /app/

RUN go build -o hello

EXPOSE 8080
ENTRYPOINT [ "go" ]
CMD ["run", "main.go"]