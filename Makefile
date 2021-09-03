regen:clean gen
	@mv -f github.com/eztop/apidoc/golang/* golang
	@rm -rf github.com
gen: clean
	@find proto -name '*.proto' | xargs protoc -I /usr/local/include --proto_path=proto --go_out=plugins=rpc:.
	@find proto -name '*.proto' | xargs protoc -I /usr/local/include --proto_path=proto --go_out=plugins=rpc:.
clean:
	@rm -rf golang/*
	@mkdir -p golang
