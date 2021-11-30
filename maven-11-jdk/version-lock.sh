#!/usr/bin/env bash
set -u -o pipefail

export VCS_SOURCE="$(git remote get-url --push origin)"
export VCS_REVISION="$(git describe --always)"
export BASE_IMAGE="quay.io/labmonkeys/openjdk:jdk-11.0.12.b25"
export OPENJDK_11_JDK_VERSION="11.0.12+7-0ubuntu3"
export MAVEN_VERSION="3.6.3-5"