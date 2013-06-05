#!/bin/sh
RNDPHRASE=https://raw.github.com/brinchj/RndPhrase/master/
OUTDIR=${1}/
CMD="/usr/bin/curl -L"
HASH="^#"
HASH_REPLACE="\/\/#"
SEARCH="^#include \\(\"\\)\\(.*\\)\/\\(.*\\)$"
REPLACE="require(\1\3)"
${CMD} ${RNDPHRASE}data/suffix-list.js > ${OUTDIR}suffix-list.js
${CMD} ${RNDPHRASE}lib/common.js \
| sed "s/${HASH}/${HASH_REPLACE}/" > ${OUTDIR}common.js
${CMD} ${RNDPHRASE}lib/cubehash.js \
| sed "s/${SEARCH}/${REPLACE}/" \
| sed "s/${HASH}/${HASH_REPLACE}/" > ${OUTDIR}cubehash.js
${CMD} ${RNDPHRASE}lib/domainmanager.js \
| sed "s/${SEARCH}/${REPLACE}/" \
| sed "s/${HASH}/${HASH_REPLACE}/" > ${OUTDIR}domainmanager.js
${CMD} ${RNDPHRASE}lib/rndphrase.js \
| sed "s/${SEARCH}/${REPLACE}/" \
| sed "s/${HASH}/${HASH_REPLACE}/" > ${OUTDIR}rndphrase.js
