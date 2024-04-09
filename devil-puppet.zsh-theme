setopt promptsubst;

export VIRTUAL_ENV_DISABLE_PROMPT=1;

function _devilPuppet_writeGitModule()
{
	branch=$(git branch --show-current 2>/dev/null);
	[[ ${branch} ]] && echo "%F{blue}git:(%F{magenta}${branch}%F{blue}) ";
}

function _devilPuppet_writePathModule()
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

function _devilPuppet_writeVirtualEnvModule()
{
	[[ ${VIRTUAL_ENV} ]] && echo "(${VIRTUAL_ENV##*/}) ";
}

PROMPT='%F{red}⤐  %F{magenta}%n%F{red}@%F{blue}%m %f⛥  $(_devilPuppet_writeVirtualEnvModule)%F{red}\
$(_devilPuppet_writePathModule) $(_devilPuppet_writeGitModule)%(?..%f[%F{red}%?%f] )%F{magenta}✗ %f';
