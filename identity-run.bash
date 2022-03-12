#!/bin/bash
prep=~/projects/prep/prep
cdir=`pwd`
support=${cdir}/support.js
${prep} '.' '$' asc.ohm asc.identity.glue --stop=1 --support=${support} <top.asc
