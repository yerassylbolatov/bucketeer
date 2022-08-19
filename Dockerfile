# Specify the base image for the go app.
FROM golang:1.15
# Specify that we now need to execute any commands in this directory.
WORKDIR /go/src/github.com/postgres-go
# Copy go modules.
COPY go.mod .
# Installing all the modules used.
RUN go mod download
# Copy everything from this project into the filesystem of the container.
COPY . .
# Compile the binary for our app.
RUN go build -o main .
# Start the application.
CMD ["./main"]