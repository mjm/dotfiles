
# MacPorts Installer addition on 2009-01-07_at_19:13:26: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# MacPorts Installer addition on 2009-01-07_at_19:13:26: adding an appropriate MANPATH variable for use with MacPorts.
export MANPATH=/opt/local/share/man:$MANPATH
# Finished adapting your MANPATH environment variable for use with MacPorts.

export PATH=$HOME/bin:$PATH

if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi

git_status() {
    if current_git_status=$(git status 2> /dev/null | grep 'added to commit'); then
	echo "☠"
    fi
}

# Set up the prompt to show Git branch and status
export PS1="
\u:\w\$(__git_ps1) \$(git_status)
→ "