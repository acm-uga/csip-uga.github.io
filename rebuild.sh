#!/bin/sh
function rebuild {
	# Stash any pending changes.
	local STASH=`git stash create`
	git reset --hard

	# Sync _problems with the master branch of csip-uga/archive.
	git submodule update --remote _problems

	# Create a possibly empty commit to force a site rebuild.
	git commit --allow-empty -am 'Rebuild site with latest content'

	# Unstash the pending changes.
	[ -z $STASH ] || git stash apply $STASH
}

rebuild
