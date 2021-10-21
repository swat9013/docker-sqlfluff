FROM python:3.10-slim

ARG WORKING_DIRECTORY=/data

RUN mkdir -p ${WORKING_DIRECTORY} \
  && pip install --no-cache-dir sqlfluff

WORKDIR ${WORKING_DIRECTORY}

ENTRYPOINT ["sqlfluff"]