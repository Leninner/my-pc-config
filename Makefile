init:
	sudo apt-add-repository -y ppa:ansible/ansible
	sudo apt-get update -y
	sudo apt-get install -y curl git software-properties-common ansible
	ansible-galaxy install -r requirements.yml

gnome-theme:
	mkdir -p ~/projets/Github/
	git clone git@github.com:imarkoff/Marble-shell-theme.git ~/Projets/Github/
	python ~/Projets/Github/Marble-shell-theme/install.py -a --filled

dry-run-full:
	ansible-playbook computer.yml --check --tags all

debug:
	ansible-playbook -vvv computer.yml --tags all

full:
	ansible-playbook computer.yml --tags all --ask-become-pass

upgrade:
	ansible-playbook computer.yml --tags "upgrade,neovim"

neovim:
	ansible-playbook computer.yml --tags "neovim"

docker:
	ansible-playbook computer.yml --tags "docker" --ask-become-pass

gnome:
	ansible-playbook computer.yml --tags "gnome" --ask-become-pass

dotfiles:
	ansible-playbook computer.yml --tags dotfiles
