#!/bin/bash
# top.asc
ductA=/tmp/duct_top_A_${RANDOM}
ductB=/tmp/duct_top_B_${RANDOM}
ductC=/tmp/duct_top_C_${RANDOM}
ductD=/tmp/duct_top_D_${RANDOM}
ductE=/tmp/duct_top_E_${RANDOM}
ductF=/tmp/duct_top_F_${RANDOM}
ductReturn=/tmp/duct_top_Return_${RANDOM}

# [$self]($in) == ${ductA}
# [clone]($in) == ${ductB}
# [clone]($out) == ${ductC}
# [make]($in) == ${ductD}
# [make]($out) == ${ductE}
# [exec]($in) == ${ductF}
# [exec]($out) == ${ductReturn}

# children
clone=./clone.bash
make=./make.bash
exec=./exec.bash

$clone <${ductB} >${ductC} &
child_clone=$!
$make <${ductD} >${ductE} &
child_make=$!
$exec <${ductF} >${ductReturn} &
child_exec=$!

wait ${child_clone} ${child_make} ${child_exec}
cat <${ductReturn}
