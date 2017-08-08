APPNAME = minuscript
DATADIR = data
INITDATADIR = $(DATADIR)/init
INSTALLDIR = ~/bin
TOOLS = mcount medit maspell maspell-scenes maspell-update mpdf2scan

install:
	install -d $(INSTALLDIR)
	install -m 0755 $(APPNAME) $(INSTALLDIR)
	install -m 0755 $(TOOLS) $(INSTALLDIR)
