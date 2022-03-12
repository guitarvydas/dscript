
# child clone
duct_top_clone___in=/tmp/duct_top_clone___in
duct_top_clone___out=/tmp/duct_top_clone___out
mkfifo ${duct_top_clone___in} ${duct_top_clone___out}
top_clone <${duct_top_clone___in} >${duct_top_clone___out} &

# child make
duct_top_make___in=/tmp/duct_top_make___in
duct_top_make___out=/tmp/duct_top_make___out
mkfifo ${duct_top_make___in} ${duct_top_make___out}
top_make <${duct_top_make___in} >${duct_top_make___out} &

# child exec
duct_top_exec___in=/tmp/duct_top_exec___in
duct_top_exec___out=/tmp/duct_top_exec___out
mkfifo ${duct_top_exec___in} ${duct_top_exec___out}
top_exec <${duct_top_exec___in} >${duct_top_exec___out} &

# connections
echo $1 >${duct_top_clone____in} &
cat <${top_clone___out} >${duct_top_make____in} &
cat <${top_make___out} >${duct_top_exec____in} &
cat <${top_exec___out} >${$return} &


