.DEFAULT_GOAL := help

PROJECT_NAME := $(shell basename `pwd`)
PROJECT_PATH := $(shell pwd)

bazelisk:
	@GO111MODULE=off go get -u github.com/bazelbuild/bazelisk

.PHONY: clean
clean: bazelisk ## Clean
	@bazelisk clean

.PHONY: build
build: bazelisk ## Build
	@bazelisk build --platforms=@io_bazel_rules_go//go/toolchain:linux_amd64 //services/${SERVICE_NAME}:${SERVICE_NAME}_image
# 	@docker load -i bazel-bin/services/${SERVICE_NAME}/${SERVICE_NAME}_image.tar
# 	@docker tag bazel/services/${SERVICE_NAME}:${SERVICE_NAME}_image 151440741398.dkr.ecr.us-west-2.amazonaws.com/howto-grpc/${SERVICE_NAME}:latest