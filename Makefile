target = index.html

html_file = index.html
scheme_file = index.scm

editor = vi
build_counter = build_counter.txt

build_number_value = $(shell cat ${build_counter})

all:
	sed -i 's/\(<\!-- BUILD NUMBER -->Build\) [0-9]*/\1 $(build_number_value)/g' $(html_file)
	@echo $$(($$(cat $(build_counter)) + 1)) > $(build_counter)
	make commit

vi:
	$(editor) $(target)

spell:
	aspell --lang=en_GB check README.md

clean:
	@echo "\"make clean\" doesn't do anything here."

include common.mk

