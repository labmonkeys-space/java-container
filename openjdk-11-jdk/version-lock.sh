#!/usr/bin/env bash
set -u -o pipefail

VCS_SOURCE="$(git remote get-url --push origin)"
VCS_REVISION="$(git describe --always)"
DATE="$(date -u +"%Y-%m-%dT%H:%M:%SZ")"
export VCS_SOURCE
export VCS_REVISION
export DATE
export BASE_IMAGE="quay.io/labmonkeys/ubuntu:jammy-20221003.b213"
export OPENJDK_11_JDK_VERSION="11.0.16+8-0ubuntu1~22.04"
