setopt promptsubst;

export VIRTUAL_ENV_DISABLE_PROMPT=1;

_devil_puppet_write_virtual_env_module() {
  [[ ${VIRTUAL_ENV} ]] && echo "(${VIRTUAL_ENV##*/}) ";
}

_devil_puppet_write_path_module() {
  path_splits=("${(s./.)PWD/${HOME}/~}");
  [[ ${#path_splits} -gt 1 ]] &&
      for index in {1..$((${#path_splits} - 1))};
      do
        [[ ${path_splits[index]} == .* ]] &&
            path_splits[index]=${path_splits[index][1,2]} ||
            path_splits[index]=${path_splits[index][1]};
      done
  echo ${(j./.)path_splits};
}

_devil_puppet_write_git_module() {
  branch=$(git branch --show-current 2>/dev/null);
  [[ ${branch} ]] && echo "%F{blue}git:(%F{magenta}${branch}%F{blue}) ";
}

PROMPT='%F{red}⤐  %F{magenta}%n%F{red}@%F{blue}%m %f⛥  \
$(_devil_puppet_write_virtual_env_module)%F{red}\
$(_devil_puppet_write_path_module) $(_devil_puppet_write_git_module)\
%(?..%f[%F{red}%?%f] )%F{magenta}✗ %f';
