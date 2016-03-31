default: build

clean:
	docker rmi bborbe/ssh

build:
	docker build --rm=true -t bborbe/ssh .

run:
	docker run -h example.com -p 2222:22 -v /tmp:/ssh  bborbe/ssh:latest

shell:
	docker run -i -t bborbe/ssh:latest /bin/bash

upload:
	docker push bborbe/ssh
