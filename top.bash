#!/bin/bash
# top.asc
duct-clone-in=/tmp/duct-top-clone-in-${RANDOM}
duct-clone-out=/tmp/duct-top-clone-out-${RANDOM}
duct-make-in=/tmp/duct-top-make-in-${RANDOM}
duct-make-out=/tmp/duct-top-out-${RANDOM}
duct-exec-in=/tmp/duct-top-exec-in-${RANDOM}
ductReturn=/tmp/duct-top-Return-${RANDOM}

# [$self]($in) >> [clean]($in)
echo $1 >${duct-clone-in} &

# [clone]($in) == ${duct-clone-in}
# [clone]($out) == ${duct-clone-out}
# [make]($in) == ${duct-make-in}
# [make]($out) == ${duct-make-out}
# [exec]($in) == ${duct-exec-in}
# [exec]($out) == ${ductReturn}

# children
clone=./clone.bash
make=./make.bash
exec=./exec.bash

$clone <${duct-clone-in} >${duct-clone-out} &
child-clone=$!
$make <${duct-make-in} >${duct-make-out} &
child-make=$!
$exec <${duct-exec-in} >${ductReturn} &
child-exec=$!

wait ${child-clone} ${child-make} ${child-exec}
cat <${ductReturn}
