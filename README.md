# My personal PC configuration

This project contains all the configuration files written using Ansible.

## How to use

- Install base

```bash
apt update && apt -y install git
apt install make
```

- Download Github repository

```bash
git clone https://github.com/Leninner/my-pc-config.git
```

- Run the Makefile

```bash
make init # Install ansible
make full # Execute all playbooks
```

## Related projects

- [My Neovim configuration](https://github.com/Leninner/nvim-config)
- [My Wezterm configuration](https://github.com/Leninner/wezterm-config)
- [My Dotfiles configuration](https://github.com/Leninner/dotfiles)
