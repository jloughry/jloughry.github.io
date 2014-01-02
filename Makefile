target = $(html_file)

html_file = index.html
css_file = style.css
scheme_file = index.scm

build_counter = build_counter.txt

build_number_value = $(shell cat ${build_counter})

all::
	sed -i 's/\(<\!-- BUILD NUMBER -->Build\) [0-9]*/\1 $(build_number_value)/g' $(html_file)
	@echo $$(($$(cat $(build_counter)) + 1)) > $(build_counter)
	make commit

vi:
	vi $(target)

style:
	vi $(css_file)

include common.mk

