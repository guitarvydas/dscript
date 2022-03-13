
# child top_clone
duct_top_clone___in=/tmp/duct_top_clone___in
duct_top_clone___out=/tmp/duct_top_clone___out
top_clone <${duct_top_clone___in} >${duct_top_clone___out} &
pid_top_clone=$!


# child top_make
duct_top_make___in=/tmp/duct_top_make___in
duct_top_make___out=/tmp/duct_top_make___out
top_make <${duct_top_make___in} >${duct_top_make___out} &
pid_top_make=$!


# child top_exec
duct_top_exec___in=/tmp/duct_top_exec___in
duct_top_exec___out=/tmp/duct_top_exec___out
top_exec <${duct_top_exec___in} >${duct_top_exec___out} &
pid_top_exec=$!


# connections
cat $1 >${duct_top_clone____in} &
cat <${duct_clone___out} >${duct_top_make____in} &
cat <${duct_make___out} >${duct_top_exec____in} &
cat <${duct_exec___out}


