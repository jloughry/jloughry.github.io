# Blog [![Build Status](https://travis-ci.org/jloughry/jloughry.github.io.svg)](https://travis-ci.org/jloughry/jloughry.github.io)

call-with-current-continuation.com
----------------------------------

This is a personal blog hosted on GitHub. It resides in a public repository. I use it for
experimentation. For security reasons, the public-facing portion is limited to static HTML
only; there are no exploitable interfaces for an attacker to try.

Scheme source code is notional only at this point, being prototype data for the CSS
implementation of syntax highlighting that I plan to do next.

favicon
-------

The favicon is composed of a lowercase italic (sometimes bold italic) Palatino Linotype
letter *"f"* in 24 points between a pair of un-italicised parentheses; the character spacing
of all three characters is extended by 4 or 5 points. The intent is for the outer rim of
the parentheses to match as nearly as possible a perfect circle, and for the serifs on the
'f' to match the angle of the horns of the parentheses so it flows together like a &#9775;
symbol.

When I updated the site's icon to incorporate a gradient like this
<img src="https://github.com/jloughry/jloughry.github.io/raw/master/favicon-16x16.png"
alt="the site's favicon"/>, I followed the advice of
[this site](http://realfavicongenerator.net/favicon_checker) when writing the HTML
metadata in `index.html`; specifically, I dropped the following line entirely:

````
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico"/>
````
The reason is because, in Firefox 30.0, the icon shown on the shortcuts bar displayed
incorrectly with a light blue background (hex `abcdef`) if the line was in there, and
properly with a transparent background without that line in the metadata. The site gets
a clean report from [favicon checker](http://realfavicongenerator.net/favicon_checker).

The background colour of the non-transparent version of the design is 0xabcdef, a nice
inoffensive light blue. That site requires source images to be PNG format and square;
the easiest way to crop a figure in Inkscape is to draw a rectangle over the figure the
size you want, leave the rectangle (or square, in this case) selected, and go into File,
Document Properties. Choose the 'Page' tab, and in the 'Custom Size' section, click
'Resize page to content...' and click the 'Resize page to drawing or selection' button.

Inkscape draws with a transparent background by default; this can be verified by File,
Document Properties, General, and clicking on the 'Background' near the top of the
dialogue box. If the alpha ('A') value is zero, then the background is transparent and
it will export that way to PNG. Export the 'page' instead of the 'drawing' to PNG if
you re-sized to a square using the previous method. I had to draw versions of the icon
with a white background (for iOS) and with a transparent background (for Windows 8) and
for the PNG files and `favicon.ico` file used by older browsers; the web site that
generated all the different sizes and wrote the HTML metadata for me did a great job.

The best icon generator, at present, is [Real Favicon Generator](http://realfavicongenerator.net).

To set the caption of a Microsoft Windows 8 tile, add this code to the `<head>`
section of the HTML:

````
<meta name="application-name" content="(call/cc latest)  ;; blog"/>
````
When the user 'pins' this web page to the Windows 8 Start Page (from 'Favourites' in
the IE 11 'Metro' browser), the caption will default to that text, although the user
can type over and change it.

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

HTML auto-generation from Scheme code experiments
------------------------------------------------

The script `markup_scheme_to_html.sh` crudely brackets regexes with HTML tags but
it'll take a parser that understands the language to do it completely hands-off.

Update 20140705.1214: the
[parser](https://github.com/jloughry/experiments/tree/master/C_kata/scheme_syntax_highlighter)
is coming along. Recently it auto-generated almost all the CSS for a syntax-highlighted
version of

````
(define length
	(lambda (l)
		(if (null? l)	; this is a comment
			0
			(+ 1 (length (cdr l))))))
````
with only some spacing issues (and the tricky problem of collapsed parentheses at
the end) remaining.

CSP
---

I'd like to specify the following [Content Security
Policy](http://en.wikipedia.org/wiki/Content_Security_Policy) on my web site:

````
Content-Security-Policy: default-src 'self'
````
But at present [GitHub Pages doesn't support adding custom HTTP
headers](http://stackoverflow.com/questions/14798589/github-pages-http-headers).

I added the [Travis CI](https://travis-ci.org/jloughry/jloughry.github.io) build
indicator at the top of the `index.html` page to have something to test CSP reports
on.

