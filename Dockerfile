FROM golang:latest

# Move to working directory /build

RUN mkdir /app
COPY main.go /app
WORKDIR /app
#Download IPFS Binary
RUN wget https://dist.ipfs.io/go-ipfs/v0.6.0/go-ipfs_v0.6.0_linux-amd64.tar.gz
RUN tar -xzf go-ipfs_v0.6.0_linux-amd64.tar.gz
WORKDIR /app/go-ipfs
RUN ./install.sh
#Initialize ipfs binary
RUN ipfs init
WORKDIR /app
#Build application and create binary
RUN go get -u github.com/ipfs/go-ipfs-api
RUN go build -o main .
ENTRYPOINT [ "ipfs", "daemon"]
