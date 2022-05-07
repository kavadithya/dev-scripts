#!/usr/bin/env bash

check_env_vars() {
    ENV_VARS="$1"
    echo "checking for env vars: $ENV_VARS"
    ## check that all required environment variables are present
    for name in "${ENV_VARS[@]}"; do
        if [[ -z "${!name+x}" ]]; then
            echo "Variable $name not set!"
            exit 1
        fi
    done

    echo "following environment variables are present: ${ENV_VARS[@]}"
}
