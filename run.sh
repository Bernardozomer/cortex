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

docker run -v "$srcdir":/tex/src -v "$(pwd)/out":/tex/out -it tex pdflatex -output-directory=/tex/out /tex/src/"$base"
