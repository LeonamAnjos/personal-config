# personal-config

Git aliases and settings shared across OSes live in `shared/gitconfig.common`.
Each platform's git config script points `git config --global include.path`
at that file and only sets its own OS-specific values on top (e.g.
`core.autocrlf` on Linux/macOS, `core.longpaths` on Windows). Edit
`shared/gitconfig.common` to change an alias for every OS at once.

## Linux

* `os-setup.sh`: initial setup for my personal Ubuntu device.
* `config-setup.sh`: initial basic config, as terminal collors and aliases.
* `config/setup_git_config.sh`: git aliases/settings (includes `shared/gitconfig.common`).

### Apply / Update basic configurations

```sh
cd linux/ && ./config-setup.sh && cd .. && source ~/.bashrc
```

## macOS

* `os-setup.sh`: initial setup for my personal macOS device.
* `config/setup_git_config.sh`: git aliases/settings (includes `shared/gitconfig.common`).

### Apply / Update git configuration

```sh
./mac/config/setup_git_config.sh
```

## Windows OS

* `setup.bat`: initial setup for my personal Windows device.
* `setup-git-config.ps1`: git aliases/settings (includes `shared/gitconfig.common`).

### Apply / Update git configuration

```powershell
.\windows\setup-git-config.ps1
```
