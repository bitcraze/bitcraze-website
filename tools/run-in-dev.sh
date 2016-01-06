#!/usr/bin/env bash
set -e

scriptDir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
rootDir=$scriptDir/..

# TODO krri Change image
# TODO krri Handle OSes, only need POLLING on non linux OSes
cmd="docker run --rm -it --volume=${rootDir}:/module -p 80:4000 web-builder jekyll serve --host 0.0.0.0 --force_polling"
echo $cmd
$($cmd)
