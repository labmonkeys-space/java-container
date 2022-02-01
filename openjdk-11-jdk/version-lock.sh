#!/usr/bin/env bash
set -u -o pipefail

export VCS_SOURCE="$(git remote get-url --push origin)"
export VCS_REVISION="$(git describe --always)"
export BASE_IMAGE="quay.io/labmonkeys/ubuntu:jammy-20220101.b123"
export OPENJDK_11_JDK_VERSION="11.0.14+9-0ubuntu2"
