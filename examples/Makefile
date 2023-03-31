# profiles.mk provides guix version specified by erasmo/channels-lock.scm
# To rebuild channels-lock.scm use `make -B erasmo/channels-lock.scm`
include profiles.mk

GUIX_PROFILE=target/profiles/guix
GUIX=./pre-inst-env ${GUIX_PROFILE}/bin/guix

SRC_DIR=./src
CONFIGS=${SRC_DIR}/citypilgrim/configs.scm
PULL_EXTRA_OPTIONS=
# --allow-downgrades

# to configure by based on profile, set ERASMO_TARGET to a profile
# defined by the "dispatcher" in CONFIGS

home/build: guix
	${GUIX} home \
	build ${CONFIGS}

home/reconfigure: guix
	${GUIX} home \
	reconfigure ${CONFIGS}

clean-target:
	rm -rf ./target

clean: clean-target
