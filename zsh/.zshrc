# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  
  # adds a bunch of git aliases. See aliases here. https://github.com/robbyrussell/oh-my-zsh/wiki/Plugin:git . Repo here https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/git
  git 

  # docker autocompletions https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/docker
  docker 

  # shell command autocompletions https://github.com/zsh-users/zsh-autosuggestions
  zsh-autosuggestions 

  # aws cli autocompletions https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/aws
  aws 

  # color man pages https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/colored-man-pages
  colored-man-pages 

  # use ccat to syntax highlight "catted out filed" https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/colorize
  # NOTE: YOU MUST INSTALL `pygments` python package. Easiest way to do this is through `pip` python package manager.
  # Once you install it, restart terminal and you should be good.
  colorize

  # type "copydir" to copy the current directory to system clipboard. https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/copypath 
  copypath 

  # type "copyfile" to copy contents of a file to system clipboard. https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/copyfile
  copyfile 

  # type "gi [TEMPLATENAME] >> .gitignore" using templates from https://www.gitignore.io/ to use one of the templates. https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/gitignore
  gitignore

  # adds heroku cli completion https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/heroku
  heroku

  # use "h" to view command history or "hsi [argument]" to search for argument in history using grep https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/history
  history

  # adds npm autocompletion as well as useful aliases https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/npm
  npm

  # adds "node-docs [libaryname]" command to open the documentation for that package https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/npm
  node

  # adds "extract [filename]" command to unzip compressed files like tar, zip, etc. https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/extract
  extract

  # adds autojump navigation tool for navigating to directories.
  # use j "full or partial directory name" to go to that directory
  # or "jc" for child directory
  # or "jo" to open file manager to that directory
  # or "jco" to open file manager in child directory
  # https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/autojump

  # NOTE: For me, this by itself didn't work. I instead ran `brew install autojump` then put 
  # `[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh` at the bottom of this file.
  # FINAL NOTE: Commands will only work on directories which have been visited before as it uses history
  autojump

  # adds aliases for opening finder window from terminal and others
  # "tab" - Opens current directory in new tab
  # "pfd" - Returns path of frontmost Finder window
  # "ofd" - Open current directory in Finder window
  # "cdf" - Change to current finder directory
  # "quick-look" Quick-Look a specified file
  # https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/osx
  macos
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"I
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# Pyenv Settings
eval "$(pyenv init -)"
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config ~/code_projects/dotfiles/ohmyposh/zen.toml)"
fi


lg()
{
    export LAZYGIT_NEW_DIR_FILE=~/.lazygit/newdir

    lazygit "$@"

    if [ -f $LAZYGIT_NEW_DIR_FILE ]; then
            cd "$(cat $LAZYGIT_NEW_DIR_FILE)"
            rm -f $LAZYGIT_NEW_DIR_FILE > /dev/null
    fi
}
eval "$(zoxide init zsh)"

# privateGPT dependencies
export PATH="$HOME/.local/bin:$PATH"

export HUGGING_FACE_API_KEY="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"
