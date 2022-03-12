prep=~/projects/prep/prep

all:
	$(prep) '.' '$' asc.ohm asc.identity.glue --stop=1 <top.asc

