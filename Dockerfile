FROM golang:latest
RUN mkdir /build
WORKDIR /build
COPY ../GOWEBAPI /build/
RUN cd /build/GOWEBAPI && go run main.go
EXPOSE 8080