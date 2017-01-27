VERSION ?= latest

default: build

clean:
	docker rmi bborbe/toolbox:$(VERSION)

build:
	docker build --build-arg VERSION=$(VERSION) --no-cache --rm=true -t bborbe/toolbox:$(VERSION) .

run:
	docker run -h example.com -p 2222:22 -v /tmp:/toolbox  bborbe/toolbox:$(VERSION)

shell:
	docker run -i -t bborbe/toolbox:$(VERSION) /bin/bash

upload:
	docker push bborbe/toolbox:$(VERSION)
