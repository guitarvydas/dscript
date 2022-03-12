
# child clean
duct_clean_in=/tmp/duct_clean_in
duct_clean_out=/tmp/duct_clean_out
mkfifo ${duct_clean_in} ${duct_clean_out}
clean <${duct_clean_in} >${duct_clean_out} &

# child git clone
duct_git clone_in=/tmp/duct_git clone_in
duct_git clone_out=/tmp/duct_git clone_out
mkfifo ${duct_git clone_in} ${duct_git clone_out}
git clone <${duct_git clone_in} >${duct_git clone_out} &

# connections
cat <${duct_$self____in} >${duct_clean____in} &
cat <${duct_clean____out} >${duct_git clone____in} &
cat <${duct_git clone____out} >${$return} &


