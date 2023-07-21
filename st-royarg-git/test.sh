#!/bin/sh

# `st -v` exits with code 1, invert it so that this test passes
command: '! st -v'

