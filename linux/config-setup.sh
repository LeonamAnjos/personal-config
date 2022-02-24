#! /bin/bash

file_bash=~/.bashrc
file_prompt="bash_prompt"
file_aliases="bash_aliases"
file_git_config="setup_git_config.sh"

path=$(pwd)
path_prompt="$path/config/$file_prompt"
path_aliases="$path/config/$file_aliases"
path_git_config="$path/config/$file_git_config"

function install_rc {
  local description="$1"
  local path_to_include="$2"

  if grep -q "$path_to_include" "$file_bash"; [ $? -eq 0 ]; then
    echo "(   ) $description"
  else
    echo "[ -f $path_to_include ] && . $path_to_include" 1>> "$file_bash"
    echo "( x ) $description"
  fi
}

install_rc $file_prompt $path_prompt
install_rc $file_aliases $path_aliases

source $path_git_config && echo "( x ) $file_git_config" || echo "(   ) $file_git_config"
