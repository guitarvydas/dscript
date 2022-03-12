
# child clone
duct_clone_in=/tmp/duct_clone_in
duct_clone_out=/tmp/duct_clone_out
mkfifo ${duct_clone_in} ${duct_clone_out}
clone <${duct_clone_in} >${duct_clone_out} &

# child make
duct_make_in=/tmp/duct_make_in
duct_make_out=/tmp/duct_make_out
mkfifo ${duct_make_in} ${duct_make_out}
make <${duct_make_in} >${duct_make_out} &

# child exec
duct_exec_in=/tmp/duct_exec_in
duct_exec_out=/tmp/duct_exec_out
mkfifo ${duct_exec_in} ${duct_exec_out}
exec <${duct_exec_in} >${duct_exec_out} &

# connections
cat <${duct_$self____in} >${duct_clone____in} &
cat <${duct_clone____out} >${duct_make____in} &
cat <${duct_make____out} >${duct_exec____in} &
cat <${duct_exec____out} >${$return} &


