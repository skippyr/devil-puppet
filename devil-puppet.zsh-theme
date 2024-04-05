export VIRTUAL_ENV_DISABLE_PROMPT=1;

setopt promptsubst;

function _DevilPuppet_WriteVirtualEnvModule()
{
    [[ ${VIRTUAL_ENV} ]] && echo "(${VIRTUAL_ENV##*/}) ";
}

function _DevilPuppet_WritePathModule()
{
    pathSplits=("${(s./.)PWD/${HOME}/~}");
    [[ ${#pathSplits} -gt 1 ]] &&
        for index in {1..$((${#pathSplits} - 1))};
        do
            [[ ${pathSplits[index]} == .* ]] &&
                pathSplits[index]=${pathSplits[index][1,2]} ||
                pathSplits[index]=${pathSplits[index][1]};
        done
    echo ${(j./.)pathSplits};
}

function _DevilPuppet_WriteGitModule()
{
    branch=$(git branch --show-current 2>/dev/null);
    [[ ${branch} ]] && echo "%F{blue}git:(%F{magenta}${branch}%F{blue}) ";
}

PROMPT='%F{red}⤐  %F{magenta}%n%F{red}@%F{blue}%m %f⛥  $(_DevilPuppet_WriteVirtualEnvModule)%F{red}\
$(_DevilPuppet_WritePathModule) $(_DevilPuppet_WriteGitModule)%(?..%f[%F{red}%?%f] )%F{magenta}✗ %f';
