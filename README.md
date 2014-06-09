Joe Loughry (joe.loughry@stx.ox.ac.uk)
===========

call-with-current-continuation.com
----------------------------------

This is a personal blog hosted on GitHub. It resides in a public repository. I use it for
experimentation. For security reasons, the public-facing portion is limited to static HTML
only; there are no exploitable interfaces for an attacker to try.

Scheme source code is notional only at this point, being prototype data for the CSS
implementation of syntax highlighting that I plan to do next.

The favicon is composed of a lowercase italic (sometimes bold italic) Palatino Linotype
letter *"f"* in 24 points between a pair of un-italicised parentheses; the character spacing
of all three characters is extended by 4 or 5 points. The intent is for the outer rim of
the parentheses to match as nearly as possible a perfect circle, and for the serifs on the
'f' to match the angle of the horns of the parentheses so it flows together like a &#9775;
symbol.

Symlink errors in GitHub Pages<a name="symlink-problem"/>
------------------------------

Recently, `make` stopped working correctly because GitHub changed the way they
support symbolic links (in GitHub Pages). Evidently they are disallowed now. One
suggested workaround is to use a
[git submodule](https://help.github.com/articles/using-submodules-with-pages).
For now, the `common.mk` file is copied directly into this directory as a regular
file until I figure out a better way to fix it.

Use of Jekyll by GitHub Pages
-----------------------------

[GitHub Pages](https://help.github.com/articles/using-jekyll-with-pages) must be
compiled by Jekyll before publishing now. If an error occurs, an email will be
sent automatically by GitHub to the repository owner. If the email is nonspecific
about the error that occurred, set up
[Travis-CI](https://help.github.com/articles/troubleshooting-github-pages-build-failures#configuring-a-third-party-service-to-display-jekyll-build-error-messages)
to do the Jekyll compilation (in Ruby) so you see the full output and the cause
of the error should be apparent. In this case, it was evidently caused by Jekyll
not liking `include` statements in Makefiles.

Lame `Makefile`
---------------

This project's Makefile is not exactly broken, but it's disconnected from the usual
mechanism for keeping `common.mk` and `get-commit-message.sh` up to date. Both files
have been copied statically into the repository (because of the
[symlink problem](#symlink-problem) described above) and will not be automatically
maintained; in addition, most of the contents of `common.mk` have been moved into
`Makefile`.

### TODO

Fix the Makefile maintenance mechanism, simplify handling of the consolidated BibTeX
file, and make symlinks work in here again by means of sub modules.

DOM Experiments
---------------

I added some nested &lt;div&gt; elements to the HTML and began to experiment with
using &lt;div&gt; to automatically indent syntax-highlighted code samples without
having to employ lots of repeated &amp;nbsp; entities.

### TODO

Look at the DOM now.

