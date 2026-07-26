#!/usr/bin/env bash

set -euo pipefail

logstash-filter-verifier daemon start --socket /tmp/logstash-filter-verifier.sock --wait-for-state-timeout 120s --no-cleanup &

trap 'logstash-filter-verifier daemon shutdown --socket /tmp/logstash-filter-verifier.sock' EXIT

sleep 5

logstash-filter-verifier daemon run --pipeline /usr/share/logstash/config/pipelines.yml --testcase-dir /usr/share/logstash/tests
