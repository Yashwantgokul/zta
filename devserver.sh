#!/bin/bash

# Export variables from .env file
if [ -f .env ]; then
  export $(grep -v '^#' .env | xargs)
fi

source .venv/bin/activate
python main.py
