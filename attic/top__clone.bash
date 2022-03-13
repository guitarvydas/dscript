
# child top__clone_clean
duct_top__clone_clean___in=/tmp/duct_top__clone_clean___in
duct_top__clone_clean___out=/tmp/duct_top__clone_clean___out
top__clone_clean.bash <${duct_top__clone_clean___in} >${duct_top__clone_clean___out} &
pid_top__clone_clean=$!


# child top__clone_git_clone
duct_top__clone_git_clone___in=/tmp/duct_top__clone_git_clone___in
duct_top__clone_git_clone___out=/tmp/duct_top__clone_git_clone___out
top__clone_git_clone.bash <${duct_top__clone_git_clone___in} >${duct_top__clone_git_clone___out} &
pid_top__clone_git_clone=$!


# connections
cat $1 >${duct_top__clone_clean___in} &
cat <${duct_top__clone_clean___out} >${duct_top__clone_git_clone___in} &
cat <${duct_top__clone_git_clone___out}


