default: build

clean:
	docker rmi bborbe/toolbox

build:
	docker build --no-cache --rm=true -t bborbe/toolbox .

run:
	docker run -h example.com -p 2222:22 -v /tmp:/toolbox  bborbe/toolbox:latest

shell:
	docker run -i -t bborbe/toolbox:latest /bin/bash

upload:
	docker push bborbe/toolbox
