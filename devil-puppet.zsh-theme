export VIRTUAL_ENV_DISABLE_PROMPT=1

setopt promptsubst

function __Devil_Puppet__Get_Virtual_Environment()
{
    [[ ${VIRTUAL_ENV} ]] && echo "%b(${VIRTUAL_ENV##*/}) %B"
}

function __Devil_Puppet__Get_Git_Branch()
{
    typeset -r branch=$(git branch --show-current 2>/dev/null)
    [[ ${branch} ]] && echo " %F{4}git:(%F{5}%B${branch}%b%F{4})%f"
}

function __Devil_Puppet__Get_Directory_Abbreviatted()
{
    typeset -a directory_splits=("${(s./.)PWD/${HOME}/~}")
    [[ ${#directory_splits} -gt 1 ]] &&
        for directory_split_index in {1..$((${#directory_splits} - 1))}; do
            [[ "${directory_splits[directory_split_index]}" == .* ]] &&
                directory_splits[directory_split_index]=${directory_splits[directory_split_index][1,2]} ||
                directory_splits[directory_split_index]=${directory_splits[directory_split_index][1]}
        done
    echo ${(j./.)directory_splits}
}

PROMPT='%F{1}%B⤐ %b %F{5}%n%F{1}%B@%b%F{4}%m%f %B⛥  $(__Devil_Puppet__Get_Virtual_Environment)%F{1}$(__Devil_Puppet__Get_Directory_Abbreviatted)%f%b$(__Devil_Puppet__Get_Git_Branch)%(?.. %F{4}[%F{1}%B%?%b%F{4}]) %F{5}✗ %f '
RPROMPT='%F{5}%B%t %F{1}%D{(%a) %b %d}%b%f'
