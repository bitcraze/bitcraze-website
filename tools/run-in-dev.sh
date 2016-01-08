#!/usr/bin/env bash
set -e

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
