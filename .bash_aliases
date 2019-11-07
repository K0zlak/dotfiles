alias config='/usr/bin/git --git-dir=/mnt/c/Users/MiKoz/.cfg/ --work-tree=/home/mikoz/'
alias g='git'
alias HOME=~/
alias WIN_HOME='/mnt/c/Users/MiKoz/'
alias VIM='/usr/share/vim/vim80/'
alias WORK='/mnt/c/Users/MiKoz/Work'
alias PROJECTS='/mnt/c/Users/MiKoz/Work/Projects'
alias NOTES='/mnt/c/Users/MiKoz/Work/Documents/Notes'
trees() {
tree -C $@ | less -R;
}


#GIT-ALIAS
alias glog="git log --pretty=\"format:'%C(yellow)%h%Creset -%C(red)%d%Creset %s
%C(dim green)(%cr) %C(cyan)<%an>%Creset %n'\" --abbrev-commit --graph --color=always $@ |  less -R;"
#++GIT-FUNCTIONS
#git status
gs() { git status; }

#git log ze sformatowaną wiadomoscią.W formie grafu.
#parametr : nazwa brancha/taga/hash commitag , opcje dla git log.
gl() { git log --pretty=format:'%C(yellow)%h%Creset -%C(red)%d%Creset %s %C(dim green)(%cr) %C(cyan)<%an>%Creset %n' --abbrev-commit --graph --color=always $@ |  less -R; }

#git log ze sformatowaną wiadomoscią.W formie grafu.
# Wyświetla wszystkie branche
gla() {	git log  --pretty=format:'%C(yellow)%h%Creset -%C(red)%d%Creset %s %C(dim green)(%cr) %C(cyan)<%an>%Creset %n' --all --graph --color=always $@ |  less -R; }

#git log ze sformatowaną wiadomoscią, pokazuje jedynie oznaczone komity branchem/tagiem + merge. Ułatwia czytanie grafu
#parametr : nazwa brancha/taga/hash commitag , opcje dla git log.
gls(){ 	git log  --pretty=format:'%C(yellow)%h%Creset -%C(red)%d%Creset %s %C(dim green)(%cr) %C(cyan)<%an>%Creset %n' --simplify-by-decoration --graph --color=always $@ |  less -R; }

#git checkout.Wersja skórcona.
gch() { git  checkout $@ ; }


#git diff różnicą "prawostronną".W skrócie pokazuje  jakie zmiany wniesie drugi do pierwszego.
#parametry
#pierszy: Branch do którego chcemy sprawdzić co wniesie drugi branch.
#drugi branch który wnosi zmiany
#następne: opcje gita.
gdiff() { git diff   --color=always $1...$2 ${@:3} |  less -R;}

#to co gdiff() wyżej ale z samymi nazwami plików.
gdiffName() { git diff   --color=always $1...$2  --name-only ${@:3} |  less -R;}

#to co gdiff() wyżej ale z samymi nazwami plików i statusem zmiany.
gdiffStatus() { git diff   --color=always $1...$2 --name-status ${@:3} |  less -R;}
