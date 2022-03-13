
# child topclone
duct_topclone___in=/tmp/duct_topclone___in
duct_topclone___out=/tmp/duct_topclone___out
topclone <${duct_topclone___in} >${duct_topclone___out} &
pid_topclone=$!


# child topmake
duct_topmake___in=/tmp/duct_topmake___in
duct_topmake___out=/tmp/duct_topmake___out
topmake <${duct_topmake___in} >${duct_topmake___out} &
pid_topmake=$!


# child topexec
duct_topexec___in=/tmp/duct_topexec___in
duct_topexec___out=/tmp/duct_topexec___out
topexec <${duct_topexec___in} >${duct_topexec___out} &
pid_topexec=$!


# connections
cat $1 >${duct_topclone____in} &
cat <${duct_topclone___out} >${duct_topmake____in} &
cat <${duct_topmake___out} >${duct_topexec____in} &
cat <${duct_topexec___out}


