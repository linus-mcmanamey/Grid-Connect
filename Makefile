refresh_home_assistant:
	@git remote add upstream https://github.com/home-assistant/core.git
	@git remote -v  

git_sync: refresh_home_assistant
	@git config --global alias.sync-dev "!git fetch upstream && git checkout dev && git merge upstream/dev && git push origin dev"