#!/usr/bin/env bash
set -u -o pipefail

export VCS_SOURCE="$(git remote get-url --push origin)"
export VCS_REVISION="$(git describe --always)"
export BASE_IMAGE="quay.io/labmonkeys/ubuntu:impish-20220105.b122"
export OPENJDK_11_JRE_VERSION="11.0.13+8-0ubuntu1~21.10"
