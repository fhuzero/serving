#!/usr/bin/env bash

set -ex

SCRIPT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
APISIX_YAML_PATH="$SCRIPT_DIR"/apisix.yaml
# Generete apisix.yaml by kustomize
kubectl kustomize "github.com/apache/apisix-ingress-controller/samples/deploy?ref=master" >> $APISIX_YAML_PATH
