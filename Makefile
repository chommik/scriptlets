scripts := $(shell find . -mindepth 1 -type d -path './[^\.]*')

$(scripts):
	@cd $@; $(MAKE) $(MFLAGS) $(MAKECMDGOALS)

install: $(scripts)

check: MFLAGS = -s
check: $(scripts)

.PHONY: install check $(scripts)
