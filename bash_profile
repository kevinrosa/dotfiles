# ssh aliases
alias awrey="ssh rosa@awrey.bw01.gso.uri.edu"
alias ratelle="ssh rosa@ratelle.gso.uri.edu"
alias cori="ssh kanga@cori.nersc.gov"
alias edison="ssh kanga@edison.nersc.gov"

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
