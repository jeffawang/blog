PAGES_REMOTE ?= git@github.com:jeffawang/jeffawang.github.io.git

build: clone
	hugo

dev:
	hugo server -D

clone:
	@# Cloning the repo if not exists.
	@test -d public || git clone "${PAGES_REMOTE}" public
	@# Guard: does the git remote match?
	@cd public && test "${PAGES_REMOTE}" = "$$(git remote get-url origin)"

commit: clone
	# If there are public changes, make a commit.
	msg="$$(git log -1 --pretty=%B)" && \
		cd public && \
		test -z "$(git status -s 2>/dev/null)" || \
		(git add -A && git commit -am"$$msg")

push:
	cd public && git push

deploy: build commit push
