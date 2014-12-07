# Copyright (c) 2014 Srijan R Shetty <srijan.shetty+code@gmail.com>
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of
# this software and associated documentation files (the "Software"), to deal in
# the Software without restriction, including without limitation the rights to
# use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
# the Software, and to permit persons to whom the Software is furnished to do so,
# subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
# FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
# IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

# Export the DOTDIR directory variable for use by other modules
export DOTDIR=~/Documents/dotfiles
export GITHUB_DIR=~/Documents/GitHub

# export local bin
export LOCAL_BIN=~/Documents/local/bin
export PATH=$PATH:$LOCAL_BIN

# colorize every grep
alias grep="grep --color"

# colored cat
alias c='pygmentize -O style=monokai -f console256 -g'

# For cut copy operations
alias xcopy="xclip -selection c"
alias xpaste="xclip -selection c -o"

# Music tagging
alias id3="id3tool"

# Bower needs this
alias bower='noglob bower'

# vim -> gvim
alias vim="gvim"
alias vi="gvim"
