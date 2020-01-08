.DEFAULT_GOAL := help

PROJECT_NAME := $(shell basename `pwd`)
PROJECT_PATH := $(shell pwd)

bazelisk:
	@GO111MODULE=off go get -u github.com/bazelbuild/bazelisk

.PHONY: clean
clean: bazelisk ## Clean
	@bazelisk clean

.PHONY: build
build:
	@sh scripts/build.sh ${SERVICE_NAME}