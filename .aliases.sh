#Start of my defined aliases
alias l='ls -lthrhp'
alias la='ls -lthrhpa'
alias cx='cd -'
alias lld='ls -d */'
alias lip='l *.ipynb'

eval "$(hub alias -s)"

alias m='more -r'
alias his='history'
alias s='google'

alias g="grep -E --color=always"
alias gg="g -i"
alias fgg='LC_ALL=C grep --color=always'
alias hgg='history | gg'

alias pcc='pwd | pbcopy'
alias oo='open .'
alias uplocdbase='sudo /usr/libexec/locate.updatedb'
alias ss='source ~/.zshrc'
alias htop='sudo htop'
alias mdl='mdless'

alias one_sided_diff="diff --changed-group-format='%<' --unchanged-group-format=''"
alias v='mvim -v'
alias vv='mvim -c "set lines=70 columns=150" -p'
alias vimdiff='mvimdiff'
alias vcat='vimcat'
# opens vim on remote machine
alias ee='vv scp://ec2_ds//home/ubuntu/'

alias sshstart='ssh-add -K ~/.ssh/id_rsa'

alias man='man -P vimpager'
alias imgcat='zsh /Users/schwenk/wrk/ds_utils/mem/shell/imgcat.sh'
alias lwc='ls | wc -l'

alias py='python3'
alias py2='python2'
alias py3='python3'
#alias ipl='jupyter notebook'
alias ipl='JUPYTER_CONFIG_DIR=~/.jupyter_sl jupyter notebook'
alias iplr='JUPYTER_CONFIG_DIR=~/.jupyter_slrec jupyter notebook'
alias ipd='JUPYTER_CONFIG_DIR=~/.jupyter_sd jupyter notebook'
alias ipo='JUPYTER_CONFIG_DIR=~/.jupyter_o jupyter notebook'

alias nbstrip='/Users/schwenk/wrk/ds_utils/nbstripout/nbstripout'
alias ipyspark='IPYTHON_OPTS="notebook"  ${SPARK_HOME}/bin/pyspark'
alias kernelven='python -m ipykernel install --user --name venv --display-name "venv"'

alias gits='git status'
alias grs='git reset --hard HEAD'

alias rmm='rm -r'
alias untar='tar -xzf'

alias pd='/usr/local/bin/charm diff'
alias pm='/usr/local/bin/charm merge'

alias awls='aws s3 ls --human-readable'

alias uppip2='pip2 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip2 install -U'
alias uppip3='pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U'
alias stripWhiteSpace='rename "s/ /_/g"'
alias start_mongo='mongod --dbpath ./data/db'
alias goctave='octave --force-gui'
#alias tt='osascript ~/Library/Application\ Support/iTerm/Scripts/ToggleSolarized.scpt'

alias deploy_sf='rsync -aczP ~/projects/sf_Blog/ sfact:sf_Blog'

alias tokes='ln -s /Users/schwenk/wrk/ds_utils/keysTkingdom .'

alias mkven='virtualenv venv --python=/usr/local/Cellar/python3/3.6.1/bin/python3.6 --no-site-packages'
alias ven='source venv/bin/activate'

alias piano='pianobar 2>/dev/null'
alias trek='play -c2 -n synth whitenoise band -n 100 24 band -n 300 100 gain +20 &> /dev/null'
alias untrek='killall play'


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
function snb(){
	cd /Users/schwenk/wrk/z__scratch/notebook_scratch
	now=$(date +"%Y_%m_%d_%H_%M_%S")
	ipn scratch_$now
}
function ggr(){
	gg -rn $1 .
}
function gin(){
	git status --porcelain | grep "??" | cut -c4- >>.gitignore
}
function pgmf(){
	find . -type f | parallel -k -j150% -n 1000 -m grep -H -n $1 {}
}
function pgsf(){
	time cat $2 | parallel --block 10M  --pipe LC_ALL=C  fgrep -i --color=always $1
}

function pgnc(){
	time cat $2 | parallel --block 10M  --pipe LC_ALL=C  fgrep -i $1
}

function pgr(){
	time cat $2 | parallel --block 30M  --pipe LC_ALL=C  grep -i --color=always $1
}

# Countdown
function countdown(){
   echo "Countdown started: $1 minutes"
   background_countdown $1 &
}

function pprjson(){
	cat $1 | jq -C '' | less
}
function prjson(){
	cat $1 | jq -C '' 
}

function sjson(){
	find ./*  -name "*.json" -exec python -m json.tool {} \; | gg $1
}

function math(){
	echo "$(($*))"
}

