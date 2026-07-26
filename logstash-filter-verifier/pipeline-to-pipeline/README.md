# LFV for a Pipeline to Pipeline Setup

## Overview

This example shows how to use Logstash Filter Verifier for a
pipeline-to-pipeline communication setup. This particular examples makes
use of the [distributor
pattern](https://www.elastic.co/docs/reference/logstash/pipeline-to-pipeline#distributor-pattern)
but will work with the others.

It makes use of the latest 'beta' release of LFV
([v2.0.0-beta.3](https://github.com/magnusbaeck/logstash-filter-verifier/releases/tag/v2.0.0-beta.3))

There are actually two tests, LFV to test the behaviour of filters and
the unofficially named `logstash-config-verifier` to syntactically
validate the config.

## Requirements

Before you try running this example, ensure:

* You have Docker, and the Docker compose plugin installed

## Run this example

```bash
# Builds the actual Logstash image
docker compose -f tests/docker-compose.yaml build logstash-config-verifier

# Runs the tests (without exit codes)
docker compose -f tests/docker-compose.yaml up --build
```

When running these tests in CI, you probably want to preserve the exit
codes such that the CI job fails when the tests fail, this can be
achieved by running the tests as follows:


```bash
docker compose -f tests/docker-compose.yaml up --exit-code-from logstash-config-verifier logstash-config-verifier
docker compose -f tests/docker-compose.yaml up --exit-code-from logstash-filter-verifier logstash-filter-verifier
```

## See also

* <https://github.com/magnusbaeck/logstash-filter-verifier>
* <https://github.com/aadam-ali/notes/tree/818e4b7d5f8382c7c2908d2d618eef6bebc48f71/notes/2026-07-03%20Using%20Docker%20Compose%20as%20a%20test%20runner.md>
