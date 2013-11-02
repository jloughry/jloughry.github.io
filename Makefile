target = index.html

html_file = index.html
scheme_file = index.scm

editor = vi
build_counter = build_counter.txt

#
# Note: make requires that we set the value of a variable OUTSIDE any rules.
#
build_number_value = $(shell cat ${build_counter})

all: commit sync

commit:
	sed -i 's/\(<\!-- BUILD NUMBER -->Build\) [0-9]*/\1 $(build_number_value)/g' $(html_file)
	@echo $$(($$(cat $(build_counter)) + 1)) > $(build_counter)
	git add .
	git commit -am "commit from Makefile"

sync:
	git pull --rebase
	git push

vi:
	$(editor) $(target)

