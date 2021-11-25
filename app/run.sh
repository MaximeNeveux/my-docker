#!/bin/bash

cd /var/local/app/

source .venv/bin/activate

export PYTHONPATH=$PYTHONPATH:/var/local/app/

python ./main.py

deactivate
