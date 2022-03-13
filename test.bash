cat >top.bash <<'~~~'

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
cat $1 >top_clone____in &
cat <clone___out >top_make____in &
cat <make___out >top_exec____in &
cat <exec___out


~~~
chmod a+x top.bash

