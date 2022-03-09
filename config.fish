set -gx EDITOR vim
set -gx TERM xterm-256color
set -gx FZF_DEFAULT_COMMAND fdfind

alias sudo "sudo -E"

function clean-pipenv
	rm -rf ~/.local/share/virtualenvs/*
end
function clean-docker
	docker container prune -f
	docker image prune -f
	docker network prune -f
	docker volume prune -f
end

starship init fish | source
