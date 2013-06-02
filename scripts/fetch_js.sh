#!/bin/sh
RNDPHRASE=https://raw.github.com/brinchj/RndPhrase/master/
OUTDIR=${1}/
CMD="/usr/bin/curl -L"
SEARCH="^#include \\(\"\\)\\(.*\\)\/\\(.*\\)$"
REPLACE="require(\1\3)"
${CMD} ${RNDPHRASE}data/suffix-list.js > ${OUTDIR}suffix-list.js

${CMD} ${RNDPHRASE}lib/common.js > ${OUTDIR}common.js
${CMD} ${RNDPHRASE}lib/cubehash.js | sed "s/${SEARCH}/${REPLACE}/"> ${OUTDIR}cubehash.js
${CMD} ${RNDPHRASE}lib/domainmanager.js | sed "s/${SEARCH}/${REPLACE}/" > ${OUTDIR}domainmanager.js
${CMD} ${RNDPHRASE}lib/rndphrase.js | sed "s/${SEARCH}/${REPLACE}/" > ${OUTDIR}rndphrase.js
