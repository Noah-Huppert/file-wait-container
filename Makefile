.PHONY: build

repo=noahhuppert/file-wait-container
version=dev
tag=${repo}:${version}

# Make Log: github.com/Noah-Huppert/make-log

NO_COLOR=\033[0m
OK_TAG=OK   #
OK_COLOR=\033[32;01m

WARN_TAG=WARN #
WARN_COLOR=\033[33;01m

ERROR_TAG=ERROR
ERROR_COLOR=\033[31;01m

define log = # level, message
$(if $(findstring ok, $(1)), @printf "$(OK_COLOR)[$(OK_TAG)] $(2)$(NO_COLOR)\n")
$(if $(findstring warn, $(1)), @printf "$(WARN_COLOR)[$(WARN_TAG)] $(2)$(NO_COLOR)\n")
$(if $(findstring error, $(1)), @printf "$(ERROR_COLOR)[$(ERROR_TAG)] $(2)$(NO_COLOR)\n")
endef

# build the docker image
build:
	$(call log, ok, Building image with ${tag} tag)
	docker build -t "${tag}" .
	$(call log, ok, Built image with ${tag} tag)
