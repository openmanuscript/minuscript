INSTALLDIR = ~/bin

install:
	install -d $(INSTALLDIR)
	install -m 0755 utilities/* $(INSTALLDIR)
