
# child clean 1
duct_clone/clean_clean_1___in=/tmp/duct_clone/clean_clean_1___in
duct_clone/clean_clean_1___out=/tmp/duct_clone/clean_clean_1___out
mkfifo ${duct_clone/clean_clean_1___in} ${duct_clone/clean_clean_1___out}
clone/clean_clean_1 <${duct_clone/clean_clean_1___in} >${duct_clone/clean_clean_1___out} &

# child clean 2
duct_clone/clean_clean_2___in=/tmp/duct_clone/clean_clean_2___in
duct_clone/clean_clean_2___out=/tmp/duct_clone/clean_clean_2___out
mkfifo ${duct_clone/clean_clean_2___in} ${duct_clone/clean_clean_2___out}
clone/clean_clean_2 <${duct_clone/clean_clean_2___in} >${duct_clone/clean_clean_2___out} &

# connections
echo $1 >${duct_clone/clean_clean_1____in} &
cat <${clone/clean_clean_1___out} >${duct_clone/clean_clean_2____in} &
cat <${clone/clean_clean_2___out} >${$return} &


