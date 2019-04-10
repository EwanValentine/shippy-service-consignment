FROM alpine:latest

RUN mkdir /app
WORKDIR /app
ADD shippy-service-consignment /app/shippy-service-consignment

CMD ["./shippy-service-consignment"]
