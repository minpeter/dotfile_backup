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

. $HOME/.asdf/asdf.sh

# Standard plugins => $ZSH/plugins/
# Custom plugins => $ZSH_CUSTOM/plugins/
plugins=(
	aws
	rust
	sudo
	asdf
	docker
	golang
	python
	history
	docker-compose
	zsh-syntax-highlighting
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# FOR asdf java #
. ~/.asdf/plugins/java/set-java-home.zsh


# FOR sortcut command #
alias explorer="explorer.exe"
alias ls="logo-ls"

