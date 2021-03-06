#
# Experimental
#

# Stocks
function get-stock-change() {
    curl -s "http://download.finance.yahoo.com/d/quotes.csv?s=$1&f=l1c1"
}

function get-stock-price() {
    curl -s "http://download.finance.yahoo.com/d/quotes.csv?s=$1&f=l1"
}

###### Taken from https://github.com/raine/cli-goodies#aliases
alias now='date -u +"%Y-%m-%dT%H:%M:%SZ"' # print current datetime as ISO

function gist-clone() {
  gist_id=`echo "$1" | sed -e 's/.*\///g'`
  git clone git@gist.github.com:/$gist_id.git $2
}

# Add the current folder's npm-bin to path
function npm-bin-path() {
  echo "adding `npm bin` to path"
  export PATH=$(npm bin):$PATH
  echo $PATH
}

# copy last command to clipboard
function copy-last-command() {
  fc -ln -1 | awk "{\$1=\$1}1" ORS="" | pbcopy
}

###########################################
#
# Alias
#
# To copy the last command output
alias -g fzfc="| fzf | pbcopy"

# Some awesomeness
alias cowcommit="wget -qO- http://whatthecommit.com/index.txt | cowsay"
alias cowsay='cowsay -f $(ls /usr/share/cowsay/cows | sort -R | head -1)'

# Make a gif using specified files
function gifify() {
  sudo docker run -it --rm -v $(pwd):/data maxogden/gifify $1 -o $2
}

# colored cat
alias c='pygmentize -O style=monokai -f console256 -g'

# vim -> gvim
alias vi="vim"

# vcsh specific aliases
alias vs="vcsh status"

# List all global npm packages
alias npm-list="npm list -g --depth 0"

# unicode support in tmux
alias tmux="tmux -u"

# top, the way it should be
alias top="top -c"

# Quick check for sha
alias sha='shasum -a 256 '

# ips
alias ipe='curl ipinfo.io/ip'

#
# Hooks
#

# Create the log if it does not exist
[ ! -e "$HOME/.install-log" ] && touch "$HOME/.install-log"

# Store an install log of all npm/pip/apt-get installs
preexec() {
  if [[ $1 =~ "^npm install " ]]; then
        echo "$1" >> "${HOME}/.install-log"
    fi

    if [[ $1 =~ "^brew (install|tap)" ]]; then
        echo "$1" >> "${HOME}/.install-log"
    fi

    if [[ $1 =~ "^gem install" ]]; then
        echo "$1" >> "${HOME}/.install-log"
    fi

    if [[ $1 =~ "^pip install" ]]; then
        echo "$1" >> "${HOME}/.install-log"
    fi

    if [[ $1 =~ "^go (get|install)" ]]; then
        echo "$1" >> "${HOME}/.install-log"
    fi

    if [[ $1 =~ "add-apt-repository" ]]; then
        echo "$1" >> "${HOME}/.install-log"
    fi

    if [[ $1 =~ "apt-get install" ]]; then
        echo "$1" >> "${HOME}/.install-log"
    fi

    if [[ $1 =~ "apt install" ]]; then
        echo "$1" >> "${HOME}/.install-log"
    fi

    if [[ $1 =~ "snap install" ]]; then
        echo "$1" >> "${HOME}/.install-log"
    fi
}
