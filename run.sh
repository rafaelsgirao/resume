#!/usr/bin/env bash

set -e
rm resume.html resume.pdf

pandoc --self-contained -o resume.html -c stylesheet.css resume.md
wkhtmltopdf resume.html resume.pdf 
