
# child clone_clean
duct_clone_clean___in=/tmp/duct_clone_clean___in
duct_clone_clean___out=/tmp/duct_clone_clean___out
clone_clean <${duct_clone_clean___in} >${duct_clone_clean___out} &
pid_clone_clean=$!


# child clone_git_clone
duct_clone_git_clone___in=/tmp/duct_clone_git_clone___in
duct_clone_git_clone___out=/tmp/duct_clone_git_clone___out
clone_git_clone <${duct_clone_git_clone___in} >${duct_clone_git_clone___out} &
pid_clone_git_clone=$!


# connections
cat $1 >${duct_clone_clean___in} &
cat <${duct_clone_clean___out} >${duct_clone_git_clone___in} &
cat <${duct_clone_git_clone___out}


