
# child clone__clean_clean_1
duct_clone__clean_clean_1___in=/tmp/duct_clone__clean_clean_1___in
duct_clone__clean_clean_1___out=/tmp/duct_clone__clean_clean_1___out
clone__clean_clean_1.bash <${duct_clone__clean_clean_1___in} >${duct_clone__clean_clean_1___out} &
pid_clone__clean_clean_1=$!


# child clone__clean_clean_2
duct_clone__clean_clean_2___in=/tmp/duct_clone__clean_clean_2___in
duct_clone__clean_clean_2___out=/tmp/duct_clone__clean_clean_2___out
clone__clean_clean_2.bash <${duct_clone__clean_clean_2___in} >${duct_clone__clean_clean_2___out} &
pid_clone__clean_clean_2=$!


# connections
cat $1 >${duct_clone__clean_clean_1___in} &
cat <${duct_clone__clean_clean_1___out} >${duct_clone__clean_clean_2___in} &
cat <${duct_clone__clean_clean_2___out}


