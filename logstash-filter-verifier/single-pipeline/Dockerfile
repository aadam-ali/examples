FROM docker.elastic.co/logstash/logstash-oss:9.4.4@sha256:627203a21474816e1d0f5f8a16442649c92138a0185cc18a790d3412e69b9f38

COPY --chown=logstash:root --chmod=755 pipelines/ /usr/share/logstash/pipeline
