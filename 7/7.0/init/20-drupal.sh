#!/usr/bin/env bash

set -e

if [[ -n "${DEBUG}" ]]; then
    set -x
fi

if [[ -z "${WODBY_APP_NAME}" ]]; then
    su-exec www-data make init -f /usr/local/bin/actions.mk
fi
