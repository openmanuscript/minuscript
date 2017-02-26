APPNAME = minuscript
DATADIR = data
INITDATADIR = $(DATADIR)/init
INSTALLDIR = ~/bin
TOOLS = moutline medit maspell maspell-scenes maspell-update

install:
	install -d $(INSTALLDIR)
	install -m 0755 $(APPNAME) $(INSTALLDIR)
	install -m 0755 $(TOOLS) $(INSTALLDIR)
