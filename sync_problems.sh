#!/bin/sh
function sync_problems {
	local STASH=`git stash create`
	echo $STASH
	git reset --hard
	git submodule update --remote _problems
	git commit -am 'Sync with problem archive'
	git stash apply $STASH
}

sync_problems
