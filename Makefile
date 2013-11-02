target = index.html

editor = vi
build_counter = build_counter.txt

deploy:
	@echo $$(($$(cat $(build_counter)) + 1)) > $(build_counter)

vi:
	$(editor) $(target)

