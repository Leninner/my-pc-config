firstrun:
	init full

init:
	sudo apt-add-repository -y ppa:ansible/ansible
	sudo apt-get update -y
	sudo apt-get install -y curl git software-properties-common ansible
	git clone https://github.com/alexarevalo9/ansible-setup-tools.git
	sudo cp ~/ansible-setup-tools/ansible/debian/local.yml ~/ansible-setup-tools/local.yml
	sudo ansible-playbook --ask-become-pass --ask-vault-pass ansible-setup-tools/local.yml -vvv
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
	ansible-playbook computer.yml --tags all

upgrade:
	ansible-playbook computer.yml --tags "upgrade,neovim"

neovim:
	ansible-playbook computer.yml --tags "neovim"

asdf:
	ansible-playbook computer.yml --tags "asdf"

dotfiles:
	ansible-playbook computer.yml --tags dotfiles
