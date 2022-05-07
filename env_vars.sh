#!/usr/bin/env bash

check_env_vars() {
    ENV_VARS="$1"
    ALL_GOOD=1

    echo "checking for required env vars"

    ## check that all required environment variables are present
    for name in "${ENV_VARS[@]}"; do
        if [[ -z "${!name+x}" ]]; then
            echo "Variable $name not set!"
            ALL_GOOD=0
        fi
    done

    ## exit 1 if not all vars are present
    if [[ "$ALL_GOOD" -eq 0 ]]; then
        echo "some required variables missing - exit 1";
        exit 1
    fi

    echo "following environment variables are present: ${ENV_VARS[@]}"
}
