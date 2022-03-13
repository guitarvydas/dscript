cat >top.bash <<'~~~'

# child top__clone
duct_top__clone___in=/tmp/duct_top__clone___in
duct_top__clone___out=/tmp/duct_top__clone___out
top__clone.bash <${duct_top__clone___in} >${duct_top__clone___out} &
pid_top__clone=$!


# child top__make
duct_top__make___in=/tmp/duct_top__make___in
duct_top__make___out=/tmp/duct_top__make___out
top__make.bash <${duct_top__make___in} >${duct_top__make___out} &
pid_top__make=$!


# child top__exec
duct_top__exec___in=/tmp/duct_top__exec___in
duct_top__exec___out=/tmp/duct_top__exec___out
top__exec.bash <${duct_top__exec___in} >${duct_top__exec___out} &
pid_top__exec=$!


# connections
cat $1 >${duct_top__clone___in} &
cat <${duct_top__clone___out} >${duct_top__make___in} &
cat <${duct_top__make___out} >${duct_top__exec___in} &
cat <${duct_top__exec___out}


~~~
chmod a+x top.bash

