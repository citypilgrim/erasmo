# profiles.mk provides guix version specified by erasmo/channels-lock.scm
# To rebuild channels-lock.scm use `make -B erasmo/channels-lock.scm`
include profiles.mk

GUIX_PROFILE=target/profiles/guix
GUIX=./pre-inst-env ${GUIX_PROFILE}/bin/guix

SRC_DIR=./src
CONFIGS=${SRC_DIR}/citypilgrim/configs.scm
PULL_EXTRA_OPTIONS=
# --allow-downgrades

# to configure by based on profile, set RDE_TARGET to a profile
# defined by the "dispatcher" in CONFIGS

tur/system/build: guix
	RDE_TARGET=tur-system ${GUIX} system \
	build ${CONFIGS}

tur/system/reconfigure: guix
	RDE_TARGET=tur-system ${GUIX} system \
	reconfigure ${CONFIGS}

tur/system/container: guix
	RDE_TARGET=tur-system ${GUIX} system \
	container ${CONFIGS}

tur/home/build: guix
	RDE_TARGET=tur-home ${GUIX} home \
	build ${CONFIGS}

tur/home/reconfigure: guix
	RDE_TARGET=tur-home ${GUIX} home \
	reconfigure ${CONFIGS}

tur/home/container: guix
	RDE_TARGET=tur-home ${GUIX} home \
	container ${CONFIGS}

clean-target:
	rm -rf ./target

clean: clean-target
