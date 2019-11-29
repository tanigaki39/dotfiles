# Lines configured by zsh-newuser-install
export EDITORP=vim #エディタをvimに設定
export LANG=ja_JP.UTF-8 #文字コードをUTF-8に設定

### antigen
source ~/.zshrc.antigen

# プロンプト設定
PROMPT='[%~:%n] %# '

# history
HISTFILE=~/work/dotfils/zsh/.zsh_hist
HISTSIZE=1000
SAVEHIST=1000
setopt extended_history #ヒストリに実行時間も保存
setopt hist_ignore_dups #直前と同じコマンドはヒストリに追加しない

#vi ライクな操作ができる
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

autoload -Uz compinit
compinit

#
# setopt
#

# cdした先のディレクトリをディレクトリスタックに追加
setopt auto_pushd

# pushdしたとき、ディレクトリがすでにスタックに含まれていればスタックに追加しない
setopt pushd_ignore_dups

# コマンドのスペルを訂正する
setopt correct

# パスを直打ちしてディレクトリ移動
setopt auto_cd

# <Tab>でパス名の補完候補を表示したあと、
# 続けて<Tab>を押すと候補からパス名を選択することができるようになる
zstyle ':completion:*:default' menu select=1

autoload colors
zstyle ':completion:*' list-lolors "${LS_COLORS}"


#エイリアス
alias la='ls -aG'
alias ll='ls -lG'
alias vz='vim ~/work/dotfiles/zsh/.zshrc'
alias code='nocorrect code'

# cdの後にlsを実行
chpwd() { ls }

# 補完候補のメニュー選択で、矢印キーの代わりにhjklで移動出来るようにする。
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char

autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '(%s)[%b]'
zstyle ':vcs_info:*' actionformats '(%s)[%b|%a]'
precmd () { vcs_info }
setopt prompt_subst
RPROMPT=$RPROMPT'${vcs_info_msg_0_}'

# End of lines added by compinstall

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/tanigaki/.npm/_npx/45752/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/tanigaki/.npm/_npx/45752/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/tanigaki/.npm/_npx/45752/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/tanigaki/.npm/_npx/45752/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/tanigaki/.npm/_npx/45752/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/tanigaki/.npm/_npx/45752/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh

# nodenv PATH

export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

# rbenv PATH

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export EDITOR=vim
eval "$(direnv hook zsh)"

function peco-history-selection() {
    BUFFER=`history -n 1 | tail -r  | awk '!a[$0]++' | peco`
    CURSOR=$#BUFFER
    zle reset-prompt
}

zle -N peco-history-selection
bindkey '^R' peco-history-selection

