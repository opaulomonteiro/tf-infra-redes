#!/bin/bash

# Configurar o caminho para o Virtualenv
VIRTUALENV=/home/paulo/venv

pushd $(dirname "$0")
source $VIRTUALENV/bin/activate
export FLASK_APP=../app.py
flask run --host=0.0.0.0 --port 8080 >> ../logs/log.txt 2>&1 &
deactivate
popd