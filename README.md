# CSIP @ UGA Homepage

This is the development repo for https://csip-uga.github.io.


## Quickstart

This site uses the [Jekyll][jekyllrb] static site generator and is deployed to GitHub pages.

[jekyllrb]: https://jekyllrb.com/

To develop locally, you'll need Ruby and the `jekyll` and `github-pages` gems.

```shell
# Install Ruby on macOS.
# Substitute your favorite package manager on your favorite OS.
brew install ruby

# On macOS, you may need to reload your shell
# to switch from the system Ruby to Homebrew Ruby.
exec $SHELL

# Install the gems.
gem install jekyll github-pages

# Now you can launch the development server.
# The dev server will automatically rebuild the site as you edit files.
jekyll serve

# Publish your changes by pushing push to GitHub.
git commit -am 'Foo the bar'
git push
```

The following documentation may be useful.

- https://pages.github.com/
- https://help.github.com/categories/customizing-github-pages/
- https://jekyllrb.com/docs/


## Adding Problems

We track the [CSIP problem archive][csip-uga/archive] as a git submodule under the `_problems` directory, and Jekyll is configured to generate pages from the problem archive automatically. To rebuild the website with the latest problems, simply update the submodule.

```shell
# Sync _problems with the master branch of csip-uga/archive.
git submodule update --remote _problems

# Publish the new problems by pushing push to GitHub.
git commit _problems -m 'Sync with problem archive'
git push
```

The commands to update the archive and make a new commit are conveniently saved as `sync_problems.sh`.

[csip-uga/archive]: https://github.com/csip-uga/archive


## Swiss Theme

This site uses the great [Swiss Jekyll Theme][broccolini/swiss] by [@broccolini][broccolini]. The theme is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

[broccolini]: https://github.com/broccolini
[broccolini/swiss]: https://github.com/broccolini/swiss
