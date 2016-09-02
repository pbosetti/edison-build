# ASCII COLOR SEQUENCES: \[\033[***m\] where *** is one of the following codes:
# Black       0;30     Dark Gray     1;30
# Blue        0;34     Light Blue    1;34
# Green       0;32     Light Green   1;32
# Cyan        0;36     Light Cyan    1;36
# Red         0;31     Light Red     1;31
# Purple      0;35     Light Purple  1;35
# Brown       0;33     Yellow        1;33
# Light Gray  0;37     White         1;37
HL_CLR="\[\033[1;32m\]"
N_CLR="\[\033[0m\]"
function get_git_branch {
  if [ -d ".git" ]
  then
    local branch=$(git branch 2>/dev/null | grep '^*' | colrm 1 2)
    local status=$(git status | grep clean)
    if [ ${#status} -eq 0 ]
    then
      local clean="*"
    fi
    echo ${branch}$clean
  else
    echo -      
  fi
}

export PS1="\\h:\W [${HL_CLR}\$(get_git_branch)${N_CLR}]\$ "

# Setting for the new UTF-8 terminal support in Lion
export LANGUAGE=en_US.UTF-8
