#!/usr/bin/env bash
set -e

# Usage:   ./languages/rs.sh INPUT                 OUTPUT                 SOLUTION
# Example: ./languages/rs.sh days/day-03/input.txt days/day-03/output.txt days/day-03/solutions/main.rs

INPUT="$1"
OUTPUT="$2"
SOLUTION="$3"
OUT="$(mktemp)"

rustc $SOLUTION -o $OUT;
cat $INPUT | $OUT | diff - $OUTPUT
rm $OUT;
echo "cat INPUT | rustc $SOLUTION ✅"
