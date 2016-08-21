APPNAME = minuscript
DATADIR = data
INITDATADIR = $(DATADIR)/init
INSTALLDIR = ~/bin
TOOLS = moutline medit

install:
	install -d $(INSTALLDIR)
	install -m 0755 $(APPNAME) $(INSTALLDIR)
	install -m 0755 $(TOOLS) $(INSTALLDIR)
