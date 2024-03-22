# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/boris/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="half-life"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  ssh-agent
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# my changes start here
export CD_TOOLS_HOME="~/Code/cd_tools"
eval "$(rbenv init -)"
alias sd='dig +noall +answer srv'
alias kubectl-k2='docker run --rm -ti docker.dev.s-cloud.net/kubectl-k2:latest kubectl'
alias dependency-tree-to-org='\
  # remove color codes
  gsed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g" |\
  # select dependencyTree output lines
  grep "^\[info\] [ a-z]" |\
  # remove [info] prefix
  gsed "s/^\[info\] //" |\
  # align non-root nodes under root
  gsed "s/^  //" |\
  # select non-empty lines
  grep "\w" |\
  # headings for non-root lines
  gsed "s/[ |][ |]/*/g" | sed "s/\+-/*/" |\
  # add a heading level for the root
  gsed "s/^/*/" |\
  # insert space before heading text
  gsed "s/\*\(\w\)/* \1/"\
'

#[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
export PATH="/usr/local/opt/terraform@0.11/bin:$PATH"
#source $HOME/.zshenv
#For compilers to find openssl@1.1 you may need to set:
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
  #
  ##For pkg-config to find openssl@1.1 you may need to set:
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"

export PATH="$PATH:/Users/boris/bin"
alias rs2='/Users/boris/bin/remote-sync.sh borisfilipov recommendations-bg-02'
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/2.7.0/bin:$PATH"

[ -d "$HOME/.sc-tools" ] && source "$HOME/.sc-tools/dotfiles/env.zsh" #sc-tools-setup
#export GPG_TTY="$(tty)"
#export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
#gpgconf --launch gpg-agent
eval "$(mcfly init zsh)"
alias cat='bat --theme "Monokai Extended Bright"'
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias whirlpool="ruby -e 'require \"digest\"; p Digest::Whirlpool.hexdigest(ARGV[0])'"
alias shop='ssh debian@shop.rhythmresearch.com -p 3642'
alias gst='git status'
alias gco='git checkout'
alias gbr='git branch'
alias gci='git commit'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/boris/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/boris/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/boris/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/boris/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
alias python=/usr/bin/python3

# # >>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/Users/boris/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/Users/boris/opt/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/Users/boris/opt/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/Users/boris/opt/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# # <<< conda initialize <<<

# export PATH="$HOME/.jenv/bin:$PATH"
# eval "$(jenv init -)"
bindkey "\e\e[D" backward-word
bindkey "\e\e[C" forward-word
