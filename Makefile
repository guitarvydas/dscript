all: identity top

identity:
	./identity-run.bash top.asc

top:
	./run.bash top.asc >_heredoc.bash
	chmod a+x _heredoc.bash
	./_heredoc.bash
	rm _heredoc.bash

dev:
	clear
	./run.bash test.asc >test.bash
	cat test.bash

