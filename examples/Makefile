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

default/home/build: guix
	RDE_TARGET=default-home ${GUIX} home \
	build ${CONFIGS}

default/home/reconfigure: guix
	RDE_TARGET=default-home ${GUIX} home \
	reconfigure ${CONFIGS}

tur/home/build: guix
	RDE_TARGET=tur-home ${GUIX} home \
	build ${CONFIGS}

tur/home/reconfigure: guix
	RDE_TARGET=tur-home ${GUIX} home \
	reconfigure ${CONFIGS} ${PULL_EXTRA_OPTIONS}

tur/home/container: guix
	RDE_TARGET=tur-home ${GUIX} home \
	container ${CONFIGS}

fruta/home/build: guix
	RDE_TARGET=fruta-home ${GUIX} home \
	build ${CONFIGS}

fruta/home/reconfigure: guix
	RDE_TARGET=fruta-home ${GUIX} home \
	reconfigure ${CONFIGS} ${PULL_EXTRA_OPTIONS}

fruta/home/container: guix
	RDE_TARGET=fruta-home ${GUIX} home \
	container ${CONFIGS}

clean-target:
	rm -rf ./target

clean: clean-target
