# Logstash Filter Verifier (LFV)

## Description

By default, Logstash does not provide a testing mechanism. You can setup
a very primitive testing framework using file inputs and outputs, where
you make assertions against the output files.

However, an opiniated and refined way of doing this is [Logstash Filter
Verifier](https://github.com/magnusbaeck/logstash-filter-verifier).

There are two examples included:

* [A single pipeline](./single-pipeline)
* [Multiple pipelines using pipeline-to-pipeline
  communication](./pipeline-to-pipeline)
