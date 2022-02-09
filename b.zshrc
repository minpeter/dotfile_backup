# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/minpeter/.oh-my-zsh"

# Configure Zsh theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# use hyphen-insensitive completion.
HYPHEN_INSENSITIVE="true"

# Fix URL and text pasting issues.
DISABLE_MAGIC_FUNCTIONS="true"

# stamp shown in the history command output.
HIST_STAMPS="yyyy-mm-dd"

# Standard plugins => $ZSH/plugins/
# Custom plugins => $ZSH_CUSTOM/plugins/
plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# FOR sortcut command #
alias explorer="explorer.exe"
alias ls="logo-ls"
alias cat="bat"
alias vim="nvim"

# FOR GO INSTALL PATH #
export GOROOT=/usr/local/go
export GOPATH=$HOME/.go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

# FOR NVM CONFIG #
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# FOR YARN BIN PATH #
export PATH="$(yarn global bin):$PATH"