[clean][git clone]
nets
>>n1>>[clean]
>>n2>>[git clone]

# connections
[$self]___in>>n1>>[clean]___in
[clean]___out>>n2>>[git clone]___in
[git clone]___out>>$nil>>$return


