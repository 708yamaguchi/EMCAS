#!/bin/bash

# Load aliases for emacs
source emacs.aliases.bash

# EMCAS test sets
TESTS=(
    # test 1
    "emcas 0nw hoge"
    "emacs -nw hoge"
    # test 2
    "eamcs -wn foo -nw"
    "emacs -nw foo -nw"
    # test 3
    "ema -csw -f shell"
    "emacs -nw -f shell"
    # test 4
    "ems"
    "emacs"
    # test 5
    "emac s-nw fuga hoge"
    "emacs -nw fuga hoge"
    # test 6
    "emacs fuga -nw hoge"
    "emacs fuga -nw hoge"
    # test 7
    "emavs -f shell -nw"
    "emacs -f shell -nw"
    # test 8
    "emcs hoge fuga"
    "emacs hoge fuga"
    # test 9
    "emsc hoge s-nw fuga"
    "emacs hoge s-nw fuga"
)

# Run tests
RET=0
STR=""
EMCAS_ECHO=0
shopt -s expand_aliases
for ((i = 0; i < ${#TESTS[@]}; i++))
do
    EMCAS_CMD=${TESTS[$i]}
    EXPECTED_CMD=${TESTS[$((i+1))]}
    STR+=$(echo "$EMCAS_CMD ,-> $(eval $EMCAS_CMD)\n")
    if [ ! "$(eval $EMCAS_CMD)" = "$EXPECTED_CMD" ]; then
        RET=1
    fi
    let i++
done
unset EMCAS_ECHO
shopt -u expand_aliases

# Print emcas test results
echo -e "$STR" | column -t -s,

# Return 0 only if all tests return 0
exit $RET
