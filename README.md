EMCAS
=====
[![Build Status](https://travis-ci.com/708yamaguchi/EMCAS.svg?branch=master)](https://travis-ci.com/708yamaguchi/EMCAS/)

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
You can eliminate emacs typo like this video:

![emcas](https://github.com/708yamaguchi/EMCAS/blob/media/emcas.gif)

Here are some examples of EMCAS completion.
```bash
$ ./test.sh
emcas 0nw hoge        -> emacs -nw hoge
eamcs -wn foo -nw     -> emacs -nw foo -nw
ema -csw -f shell     -> emacs -nw -f shell
ems                   -> emacs
emac s-nw fuga hoge   -> emacs -nw fuga hoge
emacs fuga -nw hoge   -> emacs fuga -nw hoge
emavs -f shell -nw    -> emacs -f shell -nw
emcs hoge fuga        -> emacs hoge fuga
emsc hoge s-nw fuga   -> emacs hoge s-nw fuga
```
Of course, you can use the default `emacs` command.

# Links
Qiita: https://qiita.com/708yamaguchi/items/f62d2b65e6a0ef70f854
