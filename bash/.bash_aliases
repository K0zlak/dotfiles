shopt -s expand_aliases
alias config='/usr/bin/git --git-dir=/mnt/c/Users/MiKoz/.cfg/ --work-tree=/home/mikoz/'
alias paste='powershell.exe -Command "Get-Clipboard"'
alias du='du -h -c'
alias rm='rm -i'
alias v='/usr/local/bin/nvim'
alias vim='/usr/local/bin/nvim'
# SET FZF COMPLETION FOR V
complete -o bashdefault -o default -F _fzf_path_completion v


alias t='/usr/local/bin/tmux'
alias g='git'
alias r='ranger'
alias HOME=~/
alias WIN_HOME='/mnt/c/Users/MiKoz/'
alias VIM='/usr/share/vim/vim80/'
alias WORK='/mnt/c/Users/MiKoz/Work'
alias PROJECTS='/mnt/c/Users/MiKoz/Work/Projects'
alias NOTES='/mnt/c/Users/MiKoz/Work/Documents/Notes'
alias firefox='/mnt/c/Program\ Files\ \(x86\)/Mozilla\ Firefox/firefox.exe'
alias pdfviewer='/mnt/c/Program\ Files/SumatraPDF/SumatraPDF.exe'
alias clip='/mnt/c/Windows/System32/clip.exe'
alias wsl='/mnt/c/Windows/System32/wsl.exe'
alias vlc='/mnt/c/Program\ Files/VideoLAN/VLC/vlc.exe'
alias trr='tree -C | less -R'
alias tr='tree -C -L 1 '

# USE W3M BROWSER TO GOOGLE THE TOPIC
function q(){ w3m "www.google.com/search?q=${*}";}
# alias less='HOME=~/.config/less/ LESSKEY=.less less'

function trees() {
tree -C $@ | less -R;
}

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'



#GIT-ALIAS
alias glog="git log --pretty=\"format:'%C(yellow)%h%Creset -%C(red)%d%Creset %s %C(dim green)(%cr) %C(cyan)<%an>%Creset %n'\" --abbrev-commit --graph --color=always $@ |  less -R;"
#++GIT-FUNCTIONS
#git status
function gs() { git status; }

#git log ze sformatowaną wiadomoscią.W formie grafu.
#parametr : nazwa brancha/taga/hash commitag , opcje dla git log.
function gl() { git log --pretty=format:'%C(yellow)%h%Creset -%C(red)%d%Creset %s %C(dim green)(%cr) %C(cyan)<%an>%Creset %n' --abbrev-commit --graph --color=always $@ |  less -R; }

#git log ze sformatowaną wiadomoscią.W formie grafu.
# Wyświetla wszystkie branche
function gla() {	git log  --pretty=format:'%C(yellow)%h%Creset -%C(red)%d%Creset %s %C(dim green)(%cr) %C(cyan)<%an>%Creset %n' --all --graph --color=always $@ |  less -R; }

#git log ze sformatowaną wiadomoscią, pokazuje jedynie oznaczone komity branchem/tagiem + merge. Ułatwia czytanie grafu
#parametr : nazwa brancha/taga/hash commitag , opcje dla git log.
function gls(){ 	git log  --pretty=format:'%C(yellow)%h%Creset -%C(red)%d%Creset %s %C(dim green)(%cr) %C(cyan)<%an>%Creset %n' --simplify-by-decoration --graph --color=always $@ |  less -R; }

#git checkout.Wersja skórcona.
function gch() { git  checkout $@ ; }


#git diff różnicą "prawostronną".W skrócie pokazuje  jakie zmiany wniesie drugi do pierwszego.
#parametry
#pierszy: Branch do którego chcemy sprawdzić co wniesie drugi branch.
#drugi branch który wnosi zmiany
#następne: opcje gita.
function gdiff() { git diff   --color=always $1...$2 ${@:3} |  less -R;}

#to co gdiff() wyżej ale z samymi nazwami plików.
function gdiffName() { git diff   --color=always $1...$2  --name-only ${@:3} |  less -R;}

#to co gdiff() wyżej ale z samymi nazwami plików i statusem zmiany.
function gdiffStatus() { git diff   --color=always $1...$2 --name-status ${@:3} |  less -R;}

#From https://gist.github.com/TheodorRene/a9aaca4ad978d5c0b7afe6d2b6ba4ca0#file-iwanttobeabetterman-sh
#Programs that don't have man pages usually have "--help" flags. Pipe it into less to get the real "man" experience.
function man() { command man $1 || $_ --help ;}

# https://www.youtube.com/watch?v=_KwufzorZlI&list=WL&index=17&t=13s
function vic() { vim $( which $1); }
