if status is-interactive
    # Commands to run in interactive sessions can go here
	set -gx EDITOR vim
	set -gx TERM xterm-256color
	set -gx FZF_DEFAULT_COMMAND fd
	set -gx CHROME_EXECUTABLE chromium
	
	fish_add_path ~/.local/bin
	fish_add_path ~/.gem/ruby/3.0.0/bin/
	fish_add_path ~/.config/composer/vendor/bin
	fish_add_path ~/Android/Sdk/cmdline-tools/latest/bin
	fish_add_path ~/Android/Sdk/emulator
	fish_add_path ~/Android/Sdk/platform-tools
	fish_add_path /opt/sonar-scanner/bin/

	alias sudo "sudo -E"

	function clean-pipenv
		rm -rf ~/.local/share/virtualenvs/*
	end

	function clean-kube
		rm -rf ~/.kube/*
	end

	function clean-docker
		docker container prune -f
		docker image prune -f
		docker network prune -f
		docker volume prune -f
	end

	starship init fish | source
	kubectl completion fish | source
	pip completion --fish | source

	screenfetch
end
