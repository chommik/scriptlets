scripts := $(shell find . -mindepth 1 -type d)

$(scripts):
	@cd $@; $(MAKE) $(MFLAGS) $(MAKECMDGOALS)

install: $(scripts)

check: MFLAGS = -s
check: $(scripts)

.PHONY: install check $(scripts)
