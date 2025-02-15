#!/bin/bash
export TZ=UTC

echo "# Results"

for i in samples/*.txt; do
  echo
  echo "## $i:"
  echo
  echo "![Certificate $i](${i/.txt/.png})"
  echo
  echo '```plain'
  corona-decoder -v -f "$i"
  echo '```'
done
