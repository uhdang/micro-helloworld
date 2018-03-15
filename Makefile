build:
	protoc --proto_path=$(GOPATH)/src:. --micro_out=. --go_out=. proto/greeter.proto

runServer:
	go run main.go

# run multicast DNS for zero dependencies.
runMDNSServer:
	MICRO_REGISTRY=mdns go run main.go

runQuery:
	micro query greeter Greeter.Hello '{"name": "John"}'


