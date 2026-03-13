#!/bin/bash
# build.sh - Build the static site for deployment

if [ -z "$VIRTUAL_ENV" ]; then
    echo "Activating virtual environment..."
    source venv/bin/activate
fi

echo "Building the OpenSling wiki..."
mkdocs build --clean --strict

echo "Build complete. Static files are in site/"
