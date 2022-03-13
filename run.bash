#!/bin/bash
prep=./tools/prep
cdir=`pwd`
support=${cdir}/support.js
${prep} '.' '$' asc.ohm asc.bash.glue --stop=1 --support=${support} <$1
