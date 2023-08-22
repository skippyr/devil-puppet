export VIRTUAL_ENV_DISABLE_PROMPT=1

setopt promptsubst

function _devil_puppet_get_venv() {
  [[ ${VIRTUAL_ENV} ]] && echo "%b(${VIRTUAL_ENV##*/}) %B"
}

function _devil_puppet_get_dir_abbr() {
  local d=("${(s./.)PWD/${HOME}/~}")
  [[ ${#d} -gt 1 ]] && for i in {1..$((${#d} - 1))}; do
    [[ ${d[i]} == .* ]] && d[i]=${d[i][1,2]} || d[i]=${d[i][1]}
  done
  echo ${(j./.)d}
}

function _devil_puppet_get_branch() {
  local b=$(git branch --show-current 2>/dev/null)
  [[ ${b} ]] && echo " %F{4}git:(%F{5}%B${b}%b%F{4})%f"
}

PROMPT='%F{1}%B⤐ %b %F{5}%n%F{1}%B@%b%F{4}%m%f %B⛥  $(_devil_puppet_get_venv)\
%F{1}$(_devil_puppet_get_dir_abbr)%f%b$(_devil_puppet_get_branch)%(?.. %F{4}[\
%F{1}%B%?%b%F{4}]) %F{5}✗ %f '
RPROMPT='%F{5}%B%t %F{1}%D{(%a) %b %d}%b%f'
