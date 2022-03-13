
# child top__clone__clean_clean_1
duct_top__clone__clean_clean_1___in=/tmp/duct_top__clone__clean_clean_1___in
duct_top__clone__clean_clean_1___out=/tmp/duct_top__clone__clean_clean_1___out
top__clone__clean_clean_1.bash <${duct_top__clone__clean_clean_1___in} >${duct_top__clone__clean_clean_1___out} &
pid_top__clone__clean_clean_1=$!


# child top__clone__clean_clean_2
duct_top__clone__clean_clean_2___in=/tmp/duct_top__clone__clean_clean_2___in
duct_top__clone__clean_clean_2___out=/tmp/duct_top__clone__clean_clean_2___out
top__clone__clean_clean_2.bash <${duct_top__clone__clean_clean_2___in} >${duct_top__clone__clean_clean_2___out} &
pid_top__clone__clean_clean_2=$!


# connections
cat $1 >${duct_top__clone__clean_clean_1___in} &
cat <${duct_top__clone__clean_clean_1___out} >${duct_top__clone__clean_clean_2___in} &
cat <${duct_top__clone__clean_clean_2___out}


