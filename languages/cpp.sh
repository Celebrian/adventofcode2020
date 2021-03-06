#!/usr/bin/env bash
set -e

# Usage:   ./languages/cpp.sh INPUT                 OUTPUT                 SOLUTION
# Example: ./languages/cpp.sh days/day-03/input.txt days/day-03/output.txt days/day-03/solutions/main.cpp

INPUT="$1"
OUTPUT="$2"
SOLUTION="$3"
OUT="$(mktemp)"

g++ $SOLUTION -o $OUT;
cat $INPUT | $OUT | diff - $OUTPUT
rm $OUT;
echo "cat INPUT | g++ $SOLUTION ✅"
