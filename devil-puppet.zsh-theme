export VIRTUAL_ENV_DISABLE_PROMPT=1

setopt promptsubst

function _devil_puppet {
  function get_venv {
    [[ ${VIRTUAL_ENV} ]] && echo "(${VIRTUAL_ENV##*/}) "
  }

  function get_cwd {
    d=("${(s./.)PWD/${HOME}/~}")
    [[ ${#d} -gt 1 ]] && for i in {1..$((${#d} - 1))}; do
      [[ ${d[i]} == .* ]] && d[i]=${d[i][1,2]} || d[i]=${d[i][1]}
    done
    echo ${(j./.)d}
  }

  function get_branch {
    b=$(git branch --show-current 2>/dev/null)
    [[ ${b} ]] && echo "%F{4}git:(%F{5}${b}%F{4}) "
  }

  echo "%F{1}⤐  %F{5}%n%F{1}@%F{4}%m%f ⛥  $(get_venv)%F{1}$(get_cwd)"\
       "$(get_branch)%(?..%f[%F{1}%?%f] )%F{5}✗ %f"
}

PROMPT='$(_devil_puppet)'
