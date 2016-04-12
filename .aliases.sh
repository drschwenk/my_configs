#Start of my defined aliases
alias l='ls -lthrhp'
alias la='ls -lthrhpa'
alias cx='cd -'
alias lld=ls -d

eval "$(hub alias -s)"

alias m='more -r'
alias his='history'
alias s='google'

alias g="grep -E --color=always"
alias gg="g -i"
alias fgg='LC_ALL=C grep --color=always'

alias pcc='pwd | pbcopy'
alias oo='open .'
alias uplocdbase='sudo /usr/libexec/locate.updatedb'
alias ss='source ~/.zshrc'
alias hto='sudo htop'

alias v='mvim -v'
alias vv='mvim -c "set lines=70 columns=150" -p'
# opens vim on remote machine
alias ee='vv scp://ec2_ds//home/ubuntu/'

alias man='man -P vimpager'

alias py='python'
alias py2='python2'
alias py3='python3'
alias ipl='jupyter notebook'
alias nbstrip='/Users/schwenk/wrk/ds_utils/nbstripout/nbstripout'
alias ipyspark='IPYTHON_OPTS="notebook"  ${SPARK_HOME}/bin/pyspark'

alias gits='git status'

alias pd='/usr/local/bin/charm diff'
alias pm='/usr/local/bin/charm merge'

alias awls='aws s3 ls --human-readable'

alias uppip2='pip2 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip2 install -U'
alias uppip3='pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U'
alias stripWhiteSpace='rename "s/ //g"'
alias start_mongo='mongod --dbpath ./data/db'
alias goctive='octave --force-gui'
#alias tt='osascript ~/Library/Application\ Support/iTerm/Scripts/ToggleSolarized.scpt'

alias deploy_sf='rsync -aczP ~/projects/sf_Blog/ sfact:sf_Blog'

alias tokes='ln -s /Users/schwenk/wrk/ds_utils/keysTkingdom .'

alias ven='source venv/bin/activate'

alias piano='pianobar 2>/dev/null'

alias hidden_on='defaults write com.apple.finder AppleShowAllFiles True;killall Finder'
alias hidden_off='defaults write com.apple.finder AppleShowAllFiles FALSE;killall Finder'

function c(){
  cd $1
  l .
}

function xc(){
  cd ../
  l .
}

# The following define aliases that require a function
function gnb(){
	nbstrip $1
	ga $1
}

alias new_ipynb='/Users/schwenk/wrk/ds_utils/newnb/make_new_nb'

function ipn(){
	new_ipynb $1
	suff='.ipynb'
	ipl $1$suff
}

function gin(){
	git status --porcelain | grep "??" | cut -c4- >>.gitignore
}

function pg(){
	time cat $1 | parallel --block 30M  --pipe LC_ALL=C  fgrep -i --color=always $2
}

function pgr(){
	time cat $1 | parallel --block 30M  --pipe LC_ALL=C  grep -i --color=always $2
}

# Countdown
function countdown(){
   echo "Countdown started: $1 minutes"
   background_countdown $1 &
}

function ppjson(){
	cat $1 | python -m json.tool
}



