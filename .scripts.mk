include ../Rules.mk

install-default:
	install -m 755 $(SCRIPT) $(TARGET)/$(SCRIPT)

check-default:
	@if [ -f $(TARGET)/$(SCRIPT) ]; then\
		echo "[$(SCRIPT)-$(VERSION)]" installed;\
	else\
		echo "[$(SCRIPT)-$(VERSION)]" not installed;\
	fi
	#TODO: version check

.SILENT: check check-default

$(SCRIPT): install
