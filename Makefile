CPP=gcc -c -C -P -E -xc -I. \
        -D"Q0(w)=\# w" -D"Q(w)=Q0(w)" \
WORK=work
BUILD=app/lib
PLATFORM=ios
.PHONY: clean all test

all: test

default: test

test:
	@alloy compile && \
	titanium build --platform ${PLATFORM} --deploy-type test

clean:
	@echo "Cleaning workspace" \
	titanium clean
