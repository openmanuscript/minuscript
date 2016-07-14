APPNAME = minuscript
DATADIR = data
INITDATADIR = $(DATADIR)/init
INSTALLDIR = ~/bin
PROFILE = $(APPNAME).conf
PROFILEDIR = ~/.$(APPNAME)

install:
	install -d $(PROFILEDIR) 
	install -m 0666 $(DATADIR)/$(PROFILE) $(PROFILEDIR) 
	install -d $(PROFILEDIR)/init
	install -m 0666 $(INITDATADIR)/*.json $(PROFILEDIR)/init
	install -d $(PROFILEDIR)/init/scenes
	install -m 0666 $(INITDATADIR)/scenes/* $(PROFILEDIR)/init/scenes
	install -d $(INSTALLDIR)
	install -m 0755 $(APPNAME) $(INSTALLDIR)
