# Overview
You can get free from annoying typo of `Emacs`.
In this repository, there are many aliases of `emacs` command and `-nw` option.

# Installation
All you have to do is cloning this repository and `source` command.
```bash
git clone https://github.com/708yamaguchi/EMCAS.git
cd EMCAS
source emacs.aliases.bash
```

# Examples
Here are some examples of EMCAS completion.
```bash
emcas 0nw hoge       # ->  emacs -nw eamcs
eamcs -wn foo -nw    # ->  emacs -nw foo -nw
ema -csw -f shell    # ->  emacs -nw -f shell
ems                  # ->  emacs
emac s-nw fuga hoge  # ->  emacs -nw fuga hoge
emacs fuga -nw hoge  # ->  emacs fuga -nw hoge
emavs -f shell -nw   # ->  emacs -f shell -nw
emcs hoge fuga       # ->  emacs hoge fuga
emsc hoge s-nw fuga  # ->  emacs hoge s-nw fuga
```
Of course, you can use the default `emacs` command.
