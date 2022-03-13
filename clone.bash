
# child cloneclean
duct_cloneclean___in=/tmp/duct_cloneclean___in
duct_cloneclean___out=/tmp/duct_cloneclean___out
cloneclean <${duct_cloneclean___in} >${duct_cloneclean___out} &
pid_cloneclean=$!


# child clonegit_clone
duct_clonegit_clone___in=/tmp/duct_clonegit_clone___in
duct_clonegit_clone___out=/tmp/duct_clonegit_clone___out
clonegit_clone <${duct_clonegit_clone___in} >${duct_clonegit_clone___out} &
pid_clonegit_clone=$!


# connections
cat $1 >${duct_cloneclean____in} &
cat <${duct_cloneclean___out} >${duct_clonegit_clone____in} &
cat <${duct_clonegit_clone___out}


