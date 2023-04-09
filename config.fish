if status is-interactive
    # Commands to run in interactive sessions can go here
	set -gx EDITOR vim
	set -gx TERM xterm-256color
	set -gx FZF_DEFAULT_COMMAND fd # Install fd or fd-find
	set -gx CHROME_EXECUTABLE chromium
	set -gx CAPACITOR_ANDROID_STUDIO_PATH <Android Studio Path>
	
	## Mac path config
	
	# fish_add_path /opt/homebrew/bin
	# fish_add_path ~/.rbenv/versions/3.1.3/bin/
	# fish_add_path /opt/homebrew/opt/openssl@3/bin
	# fish_add_path ~/Library/Application\ Support/JetBrains/Toolbox/scripts/
	# fish_add_path ~/Library/Android/sdk/platform-tools/
	
	## Linux path config
	
	# fish_add_path ~/.local/bin
	# fish_add_path ~/.local/share/gem/ruby/3.0.0/bin
	# fish_add_path ~/.config/composer/vendor/bin
	# fish_add_path ~/Android/Sdk/cmdline-tools/latest/bin
	# fish_add_path ~/Android/Sdk/emulator
	# fish_add_path ~/Android/Sdk/platform-tools
	# fish_add_path /opt/sonar-scanner/bin/
	# fish_add_path /usr/share/rvm/bin/
	
	alias sudo "sudo -E"
	alias be "bundle exec"
	alias gl "git log --oneline --graph --decorate"
	alias gs "git status -s"

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
	
	function rvm --description "Ruby Version Manager"
		exec bash --login -c "rvm $argv; exec fish" ^&1
	end

	starship init fish | source
	kubectl completion fish | source
	
	# pip completion --fish | source
	# status --is-interactive; and rbenv init - fish | source
end
