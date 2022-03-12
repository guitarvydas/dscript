
# child clean
duct_clone_clean___in=/tmp/duct_clone_clean___in
duct_clone_clean___out=/tmp/duct_clone_clean___out
mkfifo ${duct_clone_clean___in} ${duct_clone_clean___out}
clone_clean <${duct_clone_clean___in} >${duct_clone_clean___out} &

# child git clone
duct_clone_git_clone___in=/tmp/duct_clone_git_clone___in
duct_clone_git_clone___out=/tmp/duct_clone_git_clone___out
mkfifo ${duct_clone_git_clone___in} ${duct_clone_git_clone___out}
clone_git_clone <${duct_clone_git_clone___in} >${duct_clone_git_clone___out} &

# connections
echo $1 >${duct_clone_clean____in} &
cat <${clone_clean___out} >${duct_clone_git_clone____in} &
cat <${clone_git_clone___out} >${$return} &


