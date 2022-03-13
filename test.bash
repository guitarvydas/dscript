cat >top.ascbash <<'~~~'

# child top__clone
duct_top__clone___in=/tmp/duct_top__clone___in
duct_top__clone___out=/tmp/duct_top__clone___out
top__clone.ascbash <${duct_top__clone___in} >${duct_top__clone___out} &
pid_top__clone=$!


# child top__make
duct_top__make___in=/tmp/duct_top__make___in
duct_top__make___out=/tmp/duct_top__make___out
top__make.ascbash <${duct_top__make___in} >${duct_top__make___out} &
pid_top__make=$!


# child top__exec
duct_top__exec___in=/tmp/duct_top__exec___in
duct_top__exec___out=/tmp/duct_top__exec___out
top__exec.ascbash <${duct_top__exec___in} >${duct_top__exec___out} &
pid_top__exec=$!


# connections
cat $1 >${duct_top__clone___in} &
cat <${duct_top__clone___out} >${duct_top__make___in} &
cat <${duct_top__make___out} >${duct_top__exec___in} &
cat <${duct_top__exec___out}


~~~
chmod a+x top.ascbash
cat >top__make.ascbash <<'~~~'
 make build 

~~~
chmod a+x top__make.ascbash
cat >top__clone__clean.ascbash <<'~~~'

# child top__clone__clean__clean_1
duct_top__clone__clean__clean_1___in=/tmp/duct_top__clone__clean__clean_1___in
duct_top__clone__clean__clean_1___out=/tmp/duct_top__clone__clean__clean_1___out
top__clone__clean__clean_1.ascbash <${duct_top__clone__clean__clean_1___in} >${duct_top__clone__clean__clean_1___out} &
pid_top__clone__clean__clean_1=$!


# child top__clone__clean__clean_2
duct_top__clone__clean__clean_2___in=/tmp/duct_top__clone__clean__clean_2___in
duct_top__clone__clean__clean_2___out=/tmp/duct_top__clone__clean__clean_2___out
top__clone__clean__clean_2.ascbash <${duct_top__clone__clean__clean_2___in} >${duct_top__clone__clean__clean_2___out} &
pid_top__clone__clean__clean_2=$!


# connections
cat $1 >${duct_top__clone__clean__clean_1___in} &
cat <${duct_top__clone__clean__clean_1___out} >${duct_top__clone__clean__clean_2___in} &
cat <${duct_top__clone__clean__clean_2___out}


~~~
chmod a+x top__clone__clean.ascbash

