#!/usr/bin/env bash

set -e

# Get the dir of the runner.
CURRENT_DIR=$(dirname $0)

# Run chrome browser.
(google-chrome-stable $BEHAT_ARGS --user-data-dir=${HOME}/.google-chrome/behat --remote-debugging-address=127.0.0.1 --remote-debugging-port=9222 --window-size="1280,800") &

# Wait a bit until chrome is up.
while ! curl http://127.0.0.1:9222/json/version -s &>/dev/null
do
  sleep 0.1
done

# Run behat tests.
EXIT=1
"${CURRENT_DIR}"/vendor/bin/behat --config=behat.yml --profile=demo --colors "$@" && EXIT=0

# Kill spawned chrome browser.
JOBS="$(jobs -p)"
if [[ -n "${JOBS}" ]]; then
  kill ${JOBS}
fi

# Exit with non zero exit code in case some test failed.
if [[ ${EXIT} -ne 0 ]]; then
  exit "${EXIT}"
fi
