build:
	protoc -I. --go_out=plugins=micro:. \
		proto/consignment/consignment.proto
	GOOS=linux GOARCH=amd64 go build -o shippy-service-consignment && \
  docker build -t shippy-service-consignment .

run:
	docker run -p 50051:50051 \
		-e MICRO_SERVER_ADDRESS=:50051 \
		shippy-service-consignment
