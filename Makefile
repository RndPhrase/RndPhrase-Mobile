WORK=work
BUILD=app/lib
.PHONY: clean all update test

all: 

default: fetch_js

update: 
	scripts/fetch_js.sh app/lib

clean:
	@echo "Nothing to be cleaned just yet ;)"
