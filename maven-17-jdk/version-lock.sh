#!/usr/bin/env bash
set -u -o pipefail

export VCS_SOURCE="$(git remote get-url --push origin)"
export VCS_REVISION="$(git describe --always)"
export BASE_IMAGE="quay.io/labmonkeys/openjdk:jdk-17.b23"
export OPENJDK_17_JDK_VERSION="17+35-1"
export MAVEN_VERSION="3.6.3-5"