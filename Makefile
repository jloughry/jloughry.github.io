target = index.html

html_file = index.html
scheme_file = index.scm

editor = vi
build_counter = build_counter.txt

#
# Note: make requires that we set the value of a variable OUTSIDE any rules.
#
build_number_value = $(shell cat ${build_counter})

all: commit

commit:
	sed -i 's/\(<\!-- BUILD NUMBER -->Build\) [0-9]*/\1 $(build_number_value)/g' $(html_file)
	git commit -m "commit from Makefile" -a
	@echo $$(($$(cat $(build_counter)) + 1)) > $(build_counter)

vi:
	$(editor) $(target)

