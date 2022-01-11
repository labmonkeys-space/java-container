#!/usr/bin/env bash
set -u -o pipefail

export VCS_SOURCE="$(git remote get-url --push origin)"
export VCS_REVISION="$(git describe --always)"
export BASE_IMAGE="quay.io/labmonkeys/ubuntu:impish-20220105.b122"
export OPENJDK_17_JDK_VERSION="17.0.1+12-1~21.10"
