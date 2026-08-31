GO_MODULE := github.com/revivalxvr/protobuf

.PHONY: protoc-go
protoc-go:
	protoc --go_opt=module=$(GO_MODULE) --go_out=. \
	--go-grpc_opt=module=$(GO_MODULE) --go-grpc_out=. \
	./proto/product/*.proto ./proto/product/type/*.proto \
	

.PHONY: clean
clean:
	rm -rf ./protogen
	mkdir -p ./protogen

.PHONY: build
build: clean protoc-go