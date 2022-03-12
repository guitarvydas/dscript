[clone][make][exec]
nets
>>n1>>[clone]
>>n2>>[make]
>>n3>>[exec]

# connections
[$self]___in>>n1>>[clone]___in
[clone]___out>>n2>>[make]___in
[make]___out>>n3>>[exec]___in
[exec]___out>>$nil>>$return


