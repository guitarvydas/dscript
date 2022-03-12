
# child clean 1
duct_clean 1_in=/tmp/duct_clean 1_in
duct_clean 1_out=/tmp/duct_clean 1_out
mkfifo ${duct_clean 1_in} ${duct_clean 1_out}
clean 1 <${duct_clean 1_in} >${duct_clean 1_out} &

# child clean 2
duct_clean 2_in=/tmp/duct_clean 2_in
duct_clean 2_out=/tmp/duct_clean 2_out
mkfifo ${duct_clean 2_in} ${duct_clean 2_out}
clean 2 <${duct_clean 2_in} >${duct_clean 2_out} &

# connections
cat <${duct_$self____in} >${duct_clean 1____in} &
cat <${duct_clean 1____out} >${duct_clean 2____in} &
cat <${duct_clean 2____out} >${$return} &


