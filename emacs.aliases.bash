# EMCAS: EMacs Completion and AliaS

# Aliases for emcas. DO NOT alias emcas="emacs"
EMCAS_ALIASES=(
    eamcs
    eamsc
    ema
    ems
    emac
    emacs
    emasc
    emavs
    emcs
    emsc
)
for ((i = 0; i < ${#EMCAS_ALIASES[@]}; i++))
do
    alias ${EMCAS_ALIASES[$i]}="emcas"
done

# Aliases for emcas -nw
EMCAS_NW_ALIASES=(
    emacsn-w
    emacs-n
    emacs-nw
    emacs-w
    emacs-wn
    emcasn-w
    emcas-n
    emcas-nw
    emcas-w
    emcas-wn
)
for ((i = 0; i < ${#EMCAS_NW_ALIASES[@]}; i++))
do
    alias ${EMCAS_NW_ALIASES[$i]}="emcas -nw"
done

# Aliases for -nw option
NW_OPTIONS=(
    c-w
    n-w
    n0w
    s-
    s-n
    s-nw
    s-w
    s-wn
    w0n
    0nw
    0wn
    0sw-
    -csw
    -nw
    -s
    -snw
    -w
    -wn
)

# Main function
function emcas(){
    if [ $# -eq 0 ]; then
        COMMAND="emacs"
    elif echo "${NW_OPTIONS[@]}" | grep '\'$1 > /dev/null; then
        COMMAND="emacs -nw ${@:2}"
    else
        COMMAND="emacs ${@:1}"
    fi
    # if EMCAS_ECHO is set, only print the command
    if [ -v EMCAS_ECHO ]; then
        echo $COMMAND
    else
        command $COMMAND
    fi
}
