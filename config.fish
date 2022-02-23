set -gx EDITOR nvim
set -gx TERM xterm-256color
set -gx PATH /usr/local/bin /usr/bin ~/Android/Sdk/tools/bin ~/Android/Sdk/tools/ ~/.gem/ruby/3.0.0/bin/ ~/.config/composer/vendor/bin/ $PATH
set -gx FZF_DEFAULT_COMMAND fd
set -gx JAVA_HOME /usr/lib/jvm/java-17-openjdk/


alias sudo "sudo -E"
alias vim "nvim"

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

neofetch
