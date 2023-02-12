#!/usr/bin/env bash

for commit_count in {2..100}
do
  let linenum="10+$commit_count"
  sed -i "$linenum i This is sentence no.$commit_count." foo.tex
  pdflatex foo.tex
  git add -u
  git commit -m "Add another sentence to TeX file"
done
