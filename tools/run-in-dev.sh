#!/usr/bin/env bash
set -e

# Start a web server (in a docker container) that serves the generated content.
# Continuously updates the generated html and css when the source is changed.
#
# The server serves the content on port 80.

scriptDir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
rootDir=$scriptDir/..

# On OSX we need to pull the file system
if [ "$(uname)" == "Darwin" ]; then
  extra_args="--force_polling"
else
  extra_args=""
fi

cmd="docker run --rm -it --volume=${rootDir}:/module -p 80:4000 bitcraze/web-builder jekyll serve --host 0.0.0.0 ${extra_args}"
echo "$cmd"
$cmd
