#!/bin/bash

rm -rfv .nmlcache sec_town_names.grf sec_town_names-nml.grf sec_town_names-nfo.grf sec_town_names.nfo sec_town_names.nfo.bak parsetab.py
nmlc --nfo sec_town_names.nfo --grf sec_town_names.grf sec_town_names.nml
mv -v sec_town_names.grf sec_town_names-nml.grf
nforenum sec_town_names.nfo
grfcodec -e -c sec_town_names.grf .
mv -v sec_town_names.grf sec_town_names-nfo.grf
rm -rfv sec_town_names.nfo.bak
