#!/usr/bin/env bash
set -euo pipefail

mkdir -p build
latexmk -pdf -outdir=build main.tex
