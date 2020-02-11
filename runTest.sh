#!/bin/bash
# Run test for specified artifacts
#
# Usage:
#   ./runTest.sh ARTIFACT
# 
# ARTIFACT can be: 
# 
# ARTIFACT can be: lplatform, app, marketplace, ilp_serviceplatform, app, marketplace, ilp_service

case $1 in
  platform)
    MANIFEST_PATH=server/platform/Cargo.toml
  ;;
  app)
    MANIFEST_PATH=server/app/Cargo.toml
  ;;
  marketplace)
    MANIFEST_PATH=server/marketplace/Cargo.toml
  ;;
  ilp_service)
    MANIFEST_PATH=server/ilp_service/Cargo.toml
  ;;
  *)
esac

if [[ -v MANIFEST_PATH ]]; then
  echo "Running test on $1"
  cargo test --manifest-path=$MANIFEST_PATH
else
  echo $1 artifact not found!
fi
