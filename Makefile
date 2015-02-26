target = $(blog_page)

css_file = style.css
scheme_file = index.scm
unicode_test = unicode_font_test_page.html

security_page = security/security.html
company_page = company.html
404_page = 404.html
blog_page = blog.html

build_counter = build_counter.txt

build_number_value = $(shell cat ${build_counter})

temporary_files = *.bak consolidated_bibtex_file.bib

.PHONY : security # there's a directory named security, so we need this

all::
	sed -i 's/\(<\!-- BUILD NUMBER -->Build\) [0-9]*/\1 $(build_number_value)/g' $(blog_page)
	sed -i 's/\(<\!-- BUILD NUMBER -->Build\) [0-9]*/\1 $(build_number_value)/g' $(company_page)
	sed -i 's/\(<\!-- BUILD NUMBER -->Build\) [0-9]*/\1 $(build_number_value)/g' $(security_page)
	sed -i 's/\(<\!-- BUILD NUMBER -->Build\) [0-9]*/\1 $(build_number_value)/g' $(404_page)
	@echo $$(($$(cat $(build_counter)) + 1)) > $(build_counter)
	make commit

clean::
	rm -f $(temporary_files)

vi:
	vi $(target)

unicode:
	vi $(unicode_test)

css: style

style:
	vi $(css_file)

security:
	vi $(security_page)

404:
	vi $(404_page)

company:
	vi $(company_page)

blog:
	vi $(blog_page)

spell::
	aspell --lang=en_GB -H check $(blog_page)
	aspell --lang=en_GB -H check $(security_page)
	aspell --lang=en_GB -H check robots.txt
	aspell --lang=en_GB -H check humans.txt
	aspell --lang=en_GB -H check hackers.txt
	aspell --lang=en_GB -H check $(company_page)
	aspell --lang=en_GB -H check $(404_page)

#
# I hate to hard-code this path, because the resulting functionality only
# works for repositories underneath my `github' directory, but trying to
# make automation too intelligent violates the YAGNI principle and I have
# a thesis to write.
#

github_repository_level = /cygdrive/c/Documents\ and\ Settings/rjl/My\ Documents/thesis/github

#
# This Makefile does not include common.mk but instead incorporates much
# of its content. The reason is because the CI tool used by GitHub pages
# to build web sites doesn't play well with symlinks; fix it later.
#

bibtex_file = consolidated_bibtex_file.bib
bibtex_source = $(github_repository_level)/bibtex/consolidated_bibtex_source.bib

commit_message = commit_message.txt
get_commit_message = get_commit_message.sh
fix_bad_commits = fix_bad_commits.sh

#
# double-colon targets are done in addition to anything that might exist in the parent Makefile.
#

.PHONY: all clean allclean spell readme commit commit_only sync \
		notes quotes cv symlink-to-bibtex-file commit-bibtex

all:: symlink-to-bibtex-file
	@echo "Build `cat $(build_counter)`"
	@echo "This is \"all\" in the common.mk file."

clean::
	@echo "This is \"clean\" in the common.mk file."
	rm -f README.md.bak $(commit_message)

spell::
	aspell --lang=en_GB -H check README.md

readme:
	vi README.md

#
# I have been completely unable to find a solution to the problem of Makefiles
# failing to notice when the consolidated_bibtex_file.bib has changed. It's as
# if `make' is not looking through the symlink, but the manual says it should.
#

$(bibtex_file): symlink-to-bibtex-file

#
# This works like a lazy evaluation for commit message.
#

$(commit_message): $(get_commit_message)
	@./$(get_commit_message)

commit:
	make commit_only
	make sync

commit-bibtex:
	(cd $(github_repository_level)/bibtex && make commit)

#
# convenience target in case I mis-type the underscore.
#

commit-only: commit_only

#
# Defensive targets in case I mis-type `vi' as `ci': ci and co are old RCS
# commands and I don't want those ever running.
#

.PHONY: ci co

ci co:
	@echo "Did you mean 'vi'?"

commit_only:
	@if [ ! -d .git ]; then \
		echo                                                   ; \
		echo "Not in a Git respository. Try going up a level." ; \
		echo                                                   ; \
		/bin/false                                             ; \
	else \
		make clean                                             ; \
		make $(commit_message)                                 ; \
		git add .                                              ; \
		git commit -aF $(commit_message)                       ; \
		rm -f $(commit_message)                                ; \
	fi

sync:
	@if [ ! -d .git ]; then \
		echo                                                   ; \
		echo "Not in a Git respository. Try going up a level." ; \
		echo                                                   ; \
		/bin/false                                             ; \
	else \
		git pull                                               ; \
		git push                                               ; \
	fi

notes:
	(cd $(github_repository_level)/notes.new && vi notes.tex)

quotes:
	(cd $(github_repository_level)/notes.new && vi quotes.tex)

bibtex:
	(cd $(github_repository_level)/bibtex && make vi)

cv:
	(cd $(github_repository_level)/CV && make vi loughry_cv.tex)

