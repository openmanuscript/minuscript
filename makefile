APPNAME = minuscript
DATADIR = data
INITDATADIR = $(DATADIR)/init
INSTALLDIR = ~/bin

install:
	install -d $(INSTALLDIR)
	install -m 0755 $(APPNAME) $(INSTALLDIR)
