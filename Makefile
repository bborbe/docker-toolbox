VERSION ?= latest
REGISTRY ?= docker.io

default: build

clean:
	docker rmi $(REGISTRY)/bborbe/toolbox:$(VERSION)

build:
	docker build --build-arg VERSION=$(VERSION) --no-cache --rm=true -t $(REGISTRY)/bborbe/toolbox:$(VERSION) .

run:
	docker run -h example.com -p 2222:22 -v /tmp:/toolbox  $(REGISTRY)/bborbe/toolbox:$(VERSION)

shell:
	docker run -i -t $(REGISTRY)/bborbe/toolbox:$(VERSION) /bin/bash

upload:
	docker push $(REGISTRY)/bborbe/toolbox:$(VERSION)
