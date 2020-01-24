#!/usr/bin/env bash

dir=`dirname "$(realpath $0)"`
name=github-runner
version=v0.0.1

docker image build -t ${name}:${version} ${dir}
