#!/usr/bin/env bash

dir=`dirname "$(realpath $0)"`
name=dind
version=ubuntu-18.04

docker image build -t ${name}:${version} ${dir}
