[clean 1][clean 2]
nets
>>n1>>[clean 1]
>>n2>>[clean 2]

# connections
[$self]___in>>n1>>[clean 1]___in
[clean 1]___out>>n2>>[clean 2]___in
[clean 2]___out>>$nil>>$return


