target = index.html

html_file = index.html
scheme_file = index.scm

editor = vi
build_counter = build_counter.txt

include ../Makefiles/git1.mk

build_number_value = $(shell cat ${build_counter})

all:
	sed -i 's/\(<\!-- BUILD NUMBER -->Build\) [0-9]*/\1 $(build_number_value)/g' $(html_file)
	@echo $$(($$(cat $(build_counter)) + 1)) > $(build_counter)
	make commit

include ../Makefiles/git2.mk

vi:
	$(editor) $(target)

notes:
	(cd ../notes && make vi)

spell:
	aspell --lang=en_GB check $(documentation)

clean:
	rm -f $(documentation).bak

