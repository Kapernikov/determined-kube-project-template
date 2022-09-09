#!/bin/bash
export MASTER=${DETERMINED_MASTER}
export DET_USER=determined

cat determined-templates/experiment.yaml | envsubst > /tmp/experiment.yaml
det -m $MASTER -u ${DET_USER} tpl set experiment-${NAME}-gpu /tmp/experiment.yaml

cat determined-templates/experiment-cpu.yaml | envsubst > /tmp/experiment-cpu.yaml
det -m $MASTER -u ${DET_USER} tpl set experiment-${NAME}-cpu /tmp/experiment-cpu.yaml

cat determined-templates/notebook.yaml | envsubst > /tmp/notebook.yaml
det -m $MASTER -u ${DET_USER} tpl set notebook-${NAME}-gpu /tmp/notebook.yaml

cat determined-templates/notebook-cpu.yaml | envsubst > /tmp/notebook-cpu.yaml
det -m $MASTER -u ${DET_USER} tpl set notebook-${NAME}-cpu /tmp/notebook-cpu.yaml
