DATADIR = data
INITDATADIR = example/init
APPNAME = minuscript
INSTALLDIR = ~/bin
PROFILE = $(APPNAME).conf
PROFILEDIR = ~/.$(APPNAME)

install:
	install -d $(PROFILEDIR) 
	install -m 0666 $(DATADIR)/$(PROFILE) $(PROFILEDIR) 
	install -m 0666 $(DATADIR)/$(PROFILE) $(PROFILEDIR) 
	install -d $(INSTALLDIR)
	install -m 0755 $(APPNAME) $(INSTALLDIR)
