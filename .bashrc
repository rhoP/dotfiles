# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc


eval "$(starship init bash)"

export color_prompt=yes

alias vi="nvim"
alias vim="nvim"

# User specific aliases and functions

#export ICECC_VERSION=~/icecc_env.tag.gz
#export PATH=/usr/libexec/icecc/bin:/opt/openmpi4.0.3/bin:$HOME/anaconda3/bin:$HOME/libtorch:/var/lib/snapd/snap/bin:$HOME/MATLAB/R2020a/bin:$PATH

export PATH=$PATH:/home/rohit/julia-1.7.2/bin:$HOME/anaconda3/bin:${HOME}/.local/bin/

#export LD_LIBRARY_PATH=/opt/openmpi4.0.3/lib:/usr/lib64/mpich/lib:$HOME/anaconda3/envs/SU2ML/lib/python3.7/site-packages/torch/lib:/usr/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/opt/openmpi4.0.3/lib:/usr/lib64/mpich/lib:$HOME/libtorch/lib:/usr/lib:/usr/lib64:$LD_LIBRARY_PATH



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/rohit/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/rohit/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/rohit/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/rohit/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<






# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh




# KAGGLE

export KAGGLE_USERNAME=ptihor
export KAGGLE_KEY=fe24dff32c7365f0053f468b4a28407b
function gi() { curl -sL https://www.toptal.com/developers/gitignore/api/$@ ;}
