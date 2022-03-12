#!/bin/bash
prep=~/projects/prep/prep
cdir=`pwd`
support=${cdir}/support.js
${prep} '.' '$' asc.ohm asc.bash.glue --stop=1 --support=${support} <testtop.asc
