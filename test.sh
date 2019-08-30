#!/bin/bash

# Load aliases for emacs
source emacs.aliases.bash

# EMCAS test sets
TESTS=(
    # test 1
    "emcas-conversion s-nw hoge"
    "command emacs -nw hoge"
    # test 2
    "emcas-conversion s-nw foo -nw"
    "command emacs -nw foo -nw"
    # test 3
    "emcas-conversion s-nw -f shell"
    "command emacs -nw -f shell"
    # test 4
    "emcas-conversion"
    "command emacs"
    # test 5
    "emcas-conversion -nw fuga hoge"
    "command emacs -nw fuga hoge"
    # test 6
    "emcas-conversion fuga -nw hoge"
    "command emacs fuga -nw hoge"
    # test 7
    "emcas-conversion -f shell -nw"
    "command emacs -f shell -nw"
    # test 8
    "emcas-conversion hoge fuga"
    "command emacs hoge fuga"
    # test 9
    "emcas-conversion hoge s-nw fuga"
    "command emacs hoge s-nw fuga"
)

# Run tests
RET=0
STR=""
for ((i = 0; i < ${#TESTS[@]}; i++))
do
    EMCAS_CMD=${TESTS[$i]}
    EXPECTED_CMD=${TESTS[$((i+1))]}
    STR+=$(echo "$EMCAS_CMD ,-> $($EMCAS_CMD)\n")
    if [ ! "$($EMCAS_CMD)" = "$EXPECTED_CMD" ]; then
        RET=1
    fi
    let i++
done

# Print emcas test results
echo -e "$STR" | sed s/"emcas-conversion"/"emcas"/ | column -t -s,

# Return 0 only if all tests return 0
exit $RET
