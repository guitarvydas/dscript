#!/bin/bash
# clone.bash
duct-clone-clean-in=/tmp/duct-clone-clean-in-${RANDOM}
duct-clone-clean-out=/tmp/duct-clone-clean-out-${RANDOM}
duct-clone-git_clone-in=/tmp/duct-clone-git_clone-in-${RANDOM}
ductReturn=/tmp/duct-clone-Return-${RANDOM}

clean=./clone-clean.bash
git_clone=./clone-git_clone.bash

# [$self]($in) >> [clean]($in)
echo $1 >${duct-clone-clean-in} &

$clean <${duct-clone-clean-in} >${duct-clone-clean-out} &
$git_clone <${duct-clone-git_clone-in} >${ductReturn} &

