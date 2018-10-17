#!/bin/sh
function sync_problems {
	local STASH=`git stash create`
	git reset --hard
	git submodule update --remote _problems
	git commit -am 'Sync with problem archive' || true
	[ -z $STASH ] || git stash apply $STASH
}

sync_problems
