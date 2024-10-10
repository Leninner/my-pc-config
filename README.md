# My personal PC configuration

This project contains all the configuration files written using Ansible.

## How to use

- Install base

```bash
sudo apt update && sudo apt -y install git make
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

> This configuration works fine with Ubuntu. You must take care that the user name in vars/user.yml matches with the user that you used in the SO setup.

## Related projects

- [My Neovim configuration](https://github.com/Leninner/nvim-config)
- [My Wezterm configuration](https://github.com/Leninner/wezterm-config)
- [My Dotfiles configuration](https://github.com/Leninner/dotfiles)
