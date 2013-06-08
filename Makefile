CPP=gcc -c -C -P -E -xc -I. \
        -D"Q0(w)=\# w" -D"Q(w)=Q0(w)" \
WORK=work
BUILD=app/lib
PLATFORM=ios
.PHONY: clean all update test

all: 

default: fetch_js

update: 
	scripts/fetch_js.sh app/lib

test:
	@alloy compile && \
	titanium clean && \
	titanium build --platform ${PLATFORM} --deploy-type test

clean:
	@echo "Nothing to be cleaned just yet ;)"
