#!/bin/sh
git submodule update --remote _problems
git commit _problems -m 'Sync with problem archive'
