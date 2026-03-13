#!/bin/bash
# serve.sh - Start MkDocs development server with live reload

if [ -z "$VIRTUAL_ENV" ]; then
    echo "Activating virtual environment..."
    source venv/bin/activate
fi

echo "Starting the OpenSling wiki development server..."
echo "Open http://127.0.0.1:8000 in your browser"
echo "Press Ctrl+C to stop"
mkdocs serve
