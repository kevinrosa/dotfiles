# bash warnings
alias rm="rm -i"
alias cp="cp -i"

# ssh aliases
alias awrey="ssh rosa@awrey.bw01.gso.uri.edu"
alias ratelle="ssh rosa@ratelle.gso.uri.edu"
alias cori="ssh kanga@cori.nersc.gov"
alias edison="ssh kanga@edison.nersc.gov"
alias grizzly='ssh -tX kanga@wtrw.lanl.gov ssh kanga@gr-fe'
alias badger='ssh -tX kanga@wtrw.lanl.gov ssh kanga@ba-fe'
alias blues='ssh kevinrosa@blues.lcrc.anl.gov'
alias ccs1='ssh -Y kanga@ccscs1'
alias ccs2='ssh -Y kanga@ccscs2'
alias ccs3='ssh -Y kanga@ccscs3'
alias ccs4='ssh -Y kanga@ccscs4'
alias ccs5='ssh -Y kanga@ccscs5'
alias ccs6='ssh -Y kanga@ccscs6'
alias ccs7='ssh -Y kanga@ccscs7'
alias ccs8='ssh -Y kanga@ccscs8'

# up arrow to last-used commands
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# display "username@hostname:cwd"
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
# alt: "hostname:cwd"
# export PS1='\[\e[1;32m\]\h:\W\$\[\e[0m\] '

# -G colorizes output, -F puts a / after a directory
alias ls='ls -GFh'

# untarring from cluster
alias ttnersc='scp kanga@edison.nersc.gov:/global/cscratch1/sd/kanga/trash/tar.tar ~/Downloads/.; tar xvf tar.tar; rm -f tar.tar'
alias ttgrizzly='scp kanga@wtrw.lanl.gov:gr-fe:/lustre/scratch2/turquoise/kanga/trash/tar.tar ~/Downloads/.; tar xvf tar.tar; rm -f tar.tar'

# matlab alias for ccs servers
if [[ $(hostname -s) = ccscs* ]]; then
    alias matlab="/ccs/opt/matlab-R2017b/bin/matlab -nosplash"
fi

# git
git config --global user.email "kevin_rosa@uri.edu"
git config --global user.name "Kevin Rosa"

git config --global color.ui true
git config --global color.branch true
git config --global color.status true
git config --global color.showbranch true

git config --global color.branch.current yellow reverse
git config --global color.branch.local yello
git config --global color.branch.remote green

git config --global color.diff.meta yellow bold
git config --global color.diff.frag magenta bold
git config --global color.diff.old red bold
git config --global color.diff.new green bold

git config --global color.status.added yellow
git config --global color.status.changed green
git config --global color.status.untracked cyan
