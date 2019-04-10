build:
	protoc -I. --go_out=plugins=grpc:. \
	  proto/consignment/consignment.proto

build-container:
	GOOS=linux GOARCH=amd64 go build \
  docker build -t shippy-service-consignment .