APPNAME = minuscript
DATADIR = data
INITDATADIR = $(DATADIR)/init
INSTALLDIR = ~/bin
TOOLS = mword mcount medit maspell maspell-scenes maspell-update mpdf2scan minty

install:
	install -d $(INSTALLDIR)
	install -m 0755 $(APPNAME) $(INSTALLDIR)
	install -m 0755 $(TOOLS) $(INSTALLDIR)
