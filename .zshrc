# Path to your oh-my-zsh installation.
export ZSH=/home/davidc/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="honukai"
ZSH_THEME="juanghurtado"

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
plugins=(git)

# User configuration

  export PATH="/home/davidc/.pyenv/plugins/pyenv-virtualenvwrapp/shims:/home/davidc/.pyenv/libexec:/home/davidc/.pyenv/plugins/python-build/bin:/home/davidc/.pyenv/plugins/pyenv-virtualenvwrapp/bin:/home/davidc/.pyenv/plugins/pyenv-virtualenv/bin:/home/davidc/.pyenv/plugins/pyenv-update/bin:/home/davidc/.pyenv/plugins/pyenv-installer/bin:/home/davidc/.pyenv/plugins/pyenv-doctor/bin:/home/davidc/.pyenv/plugins/pyenv-virtualenv/shims:/home/davidc/.pyenv/shims:/home/davidc/.pyenv/bin:/home/davidc/.nvm/v0.10.40/bin:/home/davidc/.pyenv/plugins/pyenv-virtualenvwrapp/shims:/home/davidc/.pyenv/libexec:/home/davidc/.pyenv/plugins/python-build/bin:/home/davidc/.pyenv/plugins/pyenv-virtualenvwrapp/bin:/home/davidc/.pyenv/plugins/pyenv-virtualenv/bin:/home/davidc/.pyenv/plugins/pyenv-update/bin:/home/davidc/.pyenv/plugins/pyenv-installer/bin:/home/davidc/.pyenv/plugins/pyenv-doctor/bin:/home/davidc/.pyenv/plugins/pyenv-virtualenv/shims:/home/davidc/.pyenv/shims:/home/davidc/.pyenv/bin:/home/davidc/.rvm/gems/ruby-2.1.3/bin:/home/davidc/.rvm/gems/ruby-2.1.3@global/bin:/home/davidc/.rvm/rubies/ruby-2.1.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/davidc/.rvm/bin:/home/davidc/bin:/var/lib/gems/1.8/bin:/opt/local/bin:/home/davidc/.rvm/bin:/home/davidc/.rvm/bin:/home/davidc/bin:/var/lib/gems/1.8/bin:/opt/local/bin:/home/davidc/.rvm/bin:/home/davidc/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ls='ls -all --color'
bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}" end-of-line

bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[1~"   beginning-of-line
bindkey  "^[[4~"   end-of-line

export PATH="/home/davidc/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
pyenv virtualenvwrapper
alias py='python'
