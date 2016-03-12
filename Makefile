#!/usr/bin/make -f

.PHONY: all clean buildgrf buildgrfalt cleangrf

all: buildgrf buildgrfalt

clean: cleangrf

buildgrf:
	nmlc --nfo sec_town_names.nfo --grf sec_town_names.grf sec_town_names.nml
	mv -v sec_town_names.grf sec_town_names-nml.grf

buildgrfalt:
	nforenum sec_town_names.nfo
	grfcodec -e -c sec_town_names.grf .
	mv -v sec_town_names.grf sec_town_names-nfo.grf
	rm -rfv sec_town_names.nfo.bak

cleangrf:
	rm -rfv .nmlcache sec_town_names.grf sec_town_names-nml.grf sec_town_names-nfo.grf sec_town_names.nfo sec_town_names.nfo.bak parsetab.py
