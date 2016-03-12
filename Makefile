#!/usr/bin/make -f

.PHONY: all clean buildgrf cleangrf

all: buildgrf

clean: cleangrf

buildgrf:
	nmlc --nfo sec_town_names.nfo --grf sec_town_names.grf sec_town_names.nml

cleangrf:
	rm -rfv .nmlcache sec_town_names.grf sec_town_names.nfo parsetab.py
