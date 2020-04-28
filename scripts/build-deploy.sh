#!/usr/bin/env bash
set -euxo pipefail
declare -a files_modified

if [[ -n "$TRAVIS_BRANCH" ]]; then
    if [[ "$TRAVIS_BRANCH" != "master" ]]; then
      git checkout -q master && git reset  -q --soft origin/master && git checkout -q "${TRAVIS_BRANCH}" && files_modified="$(git --no-pager diff --diff-filter=ACMR --name-only master...HEAD)"
    else
      files_modified="$(git --no-pager diff --diff-filter=ACMR --name-only --stat HEAD^)"
    fi

    echo "The following files have been modified:"
    printf '    %s\n' "${files_modified[@]}"


    if [[ ! ${files_modified[*]} =~ (src/.*|Dockerfile|index.js|package.*) ]]; then
      echo "Nothing to do, exiting."
      exit 0
    elif [[ ${files_modified[*]} =~ (src/.*|Dockerfile|index.js|package.*) ]]; then
      echo "Changes in the following files have triggered a rebuild:"
      for file_name in ${files_modified[*]}; do
        if [[ $file_name =~ (src/.*|Dockerfile|index.js|package.*) ]]; then
          printf '    %s\n' "$file_name"
        fi
      done
      docker build -t sudomac/nookazon-helper
      docker images
      echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
      docker push "$DOCKER_USERNAME"/nookazon-helper
    fi
fi
