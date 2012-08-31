include ../Rules.mk

install-default:
	install -m 755 $(SCRIPT) $(TARGET)/$(SCRIPT)
	[ -d $(RESOURCES) ] || mkdir -p $(RESOURCES)
	echo "$(VERSION)" > $(RESOURCES)/$(SCRIPT)-ver

check-default:
	@if [ -f $(TARGET)/$(SCRIPT) ]; then\
		ver="unknown";\
		if [ -f $(RESOURCES)/$(SCRIPT)-ver ]; then\
			ver=`cat $(RESOURCES)/$(SCRIPT)-ver`;\
		fi;\
		echo "[$(SCRIPT)-$(VERSION)]" installed, version $$ver;\
	else\
		echo "[$(SCRIPT)-$(VERSION)]" not installed;\
	fi

.SILENT: check check-default

$(SCRIPT): install
