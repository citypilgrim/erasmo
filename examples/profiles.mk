# Store items doesn't have useful mtime, so we rely on guix.lock to prevent
# unecessary rebuilds
guix: target/profiles/guix-time-marker

target/profiles/guix-time-marker: erasmo/channels-lock.scm
	make target/profiles/guix
	touch $@

target/profiles:
	mkdir -p target/profiles

target/profiles/guix: target/profiles erasmo/channels-lock.scm
	guix pull -C erasmo/channels-lock.scm -p ${GUIX_PROFILE} \
	${PULL_EXTRA_OPTIONS}

erasmo/channels-lock.scm: erasmo/channels.scm
	echo -e "(use-modules (guix channels))\n" > ./erasmo/channels-lock-tmp.scm
	guix time-machine -C ./erasmo/channels.scm -- \
	describe -f channels >> ./erasmo/channels-lock-tmp.scm
	mv ./erasmo/channels-lock-tmp.scm ./erasmo/channels-lock.scm
