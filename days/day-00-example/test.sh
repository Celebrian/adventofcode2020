#!/usr/bin/env bash
set -e

D=$(dirname $(realpath $0))

echo ""
echo "--- Day 0: Examples ---"
$D/../../languages/bash.sh  $D/input.txt $D/output.txt $D/solutions/example.bash
$D/../../languages/c.sh     $D/input.txt $D/output.txt $D/solutions/example.c
$D/../../languages/cpp.sh   $D/input.txt $D/output.txt $D/solutions/example.cpp
$D/../../languages/go.sh    $D/input.txt $D/output.txt $D/solutions/example.go
$D/../../languages/java.sh  $D/input.txt $D/output.txt $D/solutions Example
$D/../../languages/node.sh  $D/input.txt $D/output.txt $D/solutions/example.node.mjs
$D/../../languages/php.sh   $D/input.txt $D/output.txt $D/solutions/example.php
$D/../../languages/python.sh    $D/input.txt $D/output.txt $D/solutions/example.py
$D/../../languages/sml.sh   $D/input.txt $D/output.txt $D/solutions/example.sml
$D/../../languages/rust.sh  $D/input.txt $D/output.txt $D/solutions/example.rs
$D/../../languages/ruby.sh  $D/input.txt $D/output.txt $D/solutions/example.rb
echo ""
