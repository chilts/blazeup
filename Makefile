all:
	echo 'Provide a target: blazeup clean'

vendor:
	gb vendor fetch github.com/kurin/blazer

fmt:
	find src/ -name '*.go' -exec go fmt {} ';'

build: fmt
	gb build all

blazeup: build
	./bin/blazeup

test:
	gb test -v

clean:
	rm -rf bin/ pkg/

.PHONY: blazeup
