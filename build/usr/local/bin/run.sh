#!/bin/bash

: ${SMEE_URL:?"Environment variable 'SMEE_URL' not defined in '${BASH_SOURCE[0]}'"}

declare path port target
[ -z "${SMEE_PATH:-}" ] || path="--path ${SMEE_PATH}"
[ -z "${SMEE_PORT:-}" ] || port="--port ${SMEE_PORT}"
[ -z "${SMEE_TARGET:-}" ] || target="--target ${SMEE_TARGET}"


smee --url "$SMEE_URL" ${target:-} ${path:-} ${port:-}
