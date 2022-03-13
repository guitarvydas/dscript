cat >clone__clean.bash <<'~~~'

# child clone__cleanclean_1
duct_clone__cleanclean_1___in=/tmp/duct_clone__cleanclean_1___in
duct_clone__cleanclean_1___out=/tmp/duct_clone__cleanclean_1___out
clone__cleanclean_1 <${duct_clone__cleanclean_1___in} >${duct_clone__cleanclean_1___out} &
pid_clone__cleanclean_1=$!


# child clone__cleanclean_2
duct_clone__cleanclean_2___in=/tmp/duct_clone__cleanclean_2___in
duct_clone__cleanclean_2___out=/tmp/duct_clone__cleanclean_2___out
clone__cleanclean_2 <${duct_clone__cleanclean_2___in} >${duct_clone__cleanclean_2___out} &
pid_clone__cleanclean_2=$!


# connections
cat $1 >${duct_clone__cleanclean_1____in} &
cat <${duct_clone__cleanclean_1___out} >${duct_clone__cleanclean_2____in} &
cat <${duct_clone__cleanclean_2___out}


~~~
chmod a+x clone__clean.bash
cat >clone__clean__clean_1.bash <<'~~~'
 make clean

~~~
chmod a+x clone__clean__clean_1.bash

