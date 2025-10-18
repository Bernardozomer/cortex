#!/usr/bin/env bash
set -euo pipefail

if [ $# -ne 1 ]; then
    echo "Usage: $0 path/to/file" >&2
    exit 2
fi

texfile="$1"

if [ ! -f "$texfile" ]; then
    echo "Error: file not found: $texfile" >&2
    exit 4
fi

mkdir -p out

srcdir=$(cd "$(dirname "$texfile")" && pwd)
base=$(basename "$texfile")

docker run --rm \
    -v "$srcdir":/tex/src:ro -v "$(pwd)/out":/tex/out \
    --network=none --cap-drop=ALL --cap-add=SETGID \
    cortex pdflatex -output-directory=/tex/out "/tex/src/$base"
