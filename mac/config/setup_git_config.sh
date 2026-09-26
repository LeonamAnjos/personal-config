#! /bin/bash

if ! command -v git &> /dev/null
then
    echo "Git is not installed!"
    exit
fi

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
common_config="$(cd "$script_dir/../.." && pwd)/shared/gitconfig.common"

git config --global include.path "$common_config"

# macOS-specific
git config --global core.autocrlf false
