
# alias for bash command =====
alias ls="ls -G"
alias cp="cp -i"
# alias rm="rm -i"
alias mv="mv -i"
export LSCOLORS=gxfxbxdxcxegedabagacad
export LS_COLORS="di=36:ln=35:so=31:pi=33:ex=32:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
alias sed="gsed"

# alias for App =====
alias app-cal="open -a /System/Applications/Calendar.app"
alias notion="open -a /Applications/Notion.app"
alias deepl="open -a /Applications/DeepL.app"
alias mathpix="open -a /Applications/Mathpix\ Snipping\ Tool.app"
alias line="open -a /Applications/LINE.app"
alias slack="open -a /Applications/Slack.app"

# set PATH =====
export PETSC_DIR=$HOME/lib/petsc
export PETSC_DIR_OMP=$HOME/lib/petsc
export PETSC_ARCH=arch-darwin-c-debug
export PATH=$PETSC_DIR:$PATH
export PATH=/usr/local/ff++/mpich3/bin:$PATH
export PYTHONPATH=$HOME/Scripts/python_datascience

# LaTex =====
export PATH=/usr/local/texlive/2021/bin/universal-darwin:$PATH
export BIBINPUTS=/usr/local/texlive/texmf-local/bibtex/bib

# User default environment variable =====
export CLUSTER=/Volumes/My\ Passport\ for\ Mac/cluster/
export VSnotes_pdf=$HOME/Notes/VSnotes_pdf
export POISEUILLE=$HOME/Scripts/MPS/src/poiseuille
export COUETTE=$HOME/Scripts/MPS/src/couette
export FLAT_PLATE=$HOME/cluster/src/flat_plate
export FP_FIBER=$HOME/cluster/src/fp_fiber
export FP_FIBER2=$HOME/cluster/src/fp_fiber2
export FP_FIBER3=$HOME/cluster/src/fp_fiber3
export FP_FIBER4=$HOME/cluster/src/fp_fiber4
export E_FIBER=$HOME/cluster/src/e_fiber
export E_FIBER2=$HOME/dev/src/e_fiber2
export E_FIBER3=$HOME/dev/src/e_fiber3
export MK_FIBER=$HOME/cluster/src/mk_fiber

# alias for shell scripts =====
alias syncc=$HOME/shell_script/sync/sync_to_cluster.sh
alias syncc_output=$HOME/shell_script/sync/sync_to_cluster_output.sh
alias syncl=$HOME/shell_script/sync/sync_to_local.sh
alias syncl2=$HOME/shell_script/sync/sync_to_local2.sh
alias syncH=$HOME/shell_script/sync/sync_to_HDD.sh
alias timer=$HOME/shell_script/general/timer.sh


# settings of ~/.zsh/pure =====
fpath+=/opt/homebrew/share/zsh/site-functions
autoload -U promptinit; promptinit
PURE_CMD_MAX_EXEC_TIME=60 # show execution time 
# change the colors
zstyle :prompt:pure:path color white 
zstyle :prompt:pure:git:branch color green 
zstyle :prompt:pure:prompt:success color white
# turn on git stash status
zstyle :prompt:pure:git:stash show yes
zstyle :prompt:pure:git:dirty show yes

prompt pure

# # the name of git branch =====
# # git
# autoload -Uz vcs_info
# setopt prompt_subst
# zstyle ':vcs_info:git:*' check-for-changes true
# zstyle ':vcs_info:git:*' stagedstr "%F{magenta}!"
# zstyle ':vcs_info:git:*' unstagedstr "%F{yellow}+"
# zstyle ':vcs_info:*' formats "%F{cyan}%c%u[%b]%f"
# zstyle ':vcs_info:*' actionformats '[%b|%a]'
# precmd () { vcs_info }
# 
# # prompt customize
# # PROMPT='%n@%m %1~ %# '  # default
# # PROMPT='[%B%F{red}%n@%m%f%b:%F{green}%~%f]%F{cyan}$vcs_info_msg_0_%f
# # %F{yellow}$%f '
# PROMPT='[%n@%m:%~]%F{cyan}$vcs_info_msg_0_%f 
# %# '


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$HOME/lib/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/lib/miniforge3/etc/profile.d/conda.sh" ]; then
        . "$HOME/lib/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/lib/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup

conda activate ds_env
# <<< conda initialize <<<


