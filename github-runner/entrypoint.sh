#!/bin/bash

service docker start

export AGENT_ALLOW_RUNASROOT=1

echo "$AGENT_ALLOW_RUNASROOT"

if [ ! -f .configured ]; then
  echo ${RUNNER_NAME:-default}$'\n\n' | /config.sh --url ${REPO_URL} --token ${RUNNER_TOKEN}
  touch .configured
fi

exec /run.sh
