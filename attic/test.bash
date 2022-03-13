cat >clone__clean.bash <<'~~~'

# child clone__clean_clean_1
duct_clone__clean_clean_1___in=/tmp/duct_clone__clean_clean_1___in
duct_clone__clean_clean_1___out=/tmp/duct_clone__clean_clean_1___out
clone__clean_clean_1 <${duct_clone__clean_clean_1___in} >${duct_clone__clean_clean_1___out} &
pid_clone__clean_clean_1=$!


# child clone__clean_clean_2
duct_clone__clean_clean_2___in=/tmp/duct_clone__clean_clean_2___in
duct_clone__clean_clean_2___out=/tmp/duct_clone__clean_clean_2___out
clone__clean_clean_2 <${duct_clone__clean_clean_2___in} >${duct_clone__clean_clean_2___out} &
pid_clone__clean_clean_2=$!


# connections
cat $1 >${duct_clone__clean_clean_1____in} &
cat <${duct_clone__clean_clean_1___out} >${duct_clone__clean_clean_2____in} &
cat <${duct_clone__clean_clean_2___out}


~~~
chmod a+x clone__clean.bash
cat >clone__clean__clean_1.bash <<'~~~'
 make clean

~~~
chmod a+x clone__clean__clean_1.bash
cat >top.bash <<'~~~'

# child top_clone
duct_top_clone___in=/tmp/duct_top_clone___in
duct_top_clone___out=/tmp/duct_top_clone___out
top_clone <${duct_top_clone___in} >${duct_top_clone___out} &
pid_top_clone=$!


# child top_make
duct_top_make___in=/tmp/duct_top_make___in
duct_top_make___out=/tmp/duct_top_make___out
top_make <${duct_top_make___in} >${duct_top_make___out} &
pid_top_make=$!


# child top_exec
duct_top_exec___in=/tmp/duct_top_exec___in
duct_top_exec___out=/tmp/duct_top_exec___out
top_exec <${duct_top_exec___in} >${duct_top_exec___out} &
pid_top_exec=$!


# connections
cat $1 >${duct_top_clone____in} &
cat <${duct_top_clone___out} >${duct_top_make____in} &
cat <${duct_top_make___out} >${duct_top_exec____in} &
cat <${duct_top_exec___out}


~~~
chmod a+x top.bash

