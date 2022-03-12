all: identity bashasc

identity:
	./identity-run.bash top.asc

bashasc:
	./run.bash top.asc >_heredoc.bash

dev:
	./run.bash test.asc >test.bash

