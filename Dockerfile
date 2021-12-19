FROM golang:latest
RUN mkdir /build
WORKDIR /build
RUN cd /build && rm -rf GOWEBAPI
RUN cd /build && git clone https://github.com/saviobarr/GOWEBAPI.git
RUN cd /build/GOWEBAPI && git pull
RUN cd /build/GOWEBAPI && go build
EXPOSE 8080
ENTRYPOINT [ "/build/GOWEBAPI/GOWEBAPI" ]