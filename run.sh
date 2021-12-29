#!/usr/bin/env bash
#nix-shell -p pandoc wkhtmltopdf --run ./run.sh
set -e
touch resume.html resume.pdf
rm resume.html resume.pdf

pandoc --self-contained -o resume.html -c stylesheet.css resume.md
wkhtmltopdf resume.html resume.pdf 
