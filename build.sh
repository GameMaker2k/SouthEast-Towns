#!/bin/bash

rm -rfv .nmlcache sec_town_names-optimized.nml sec_town_names.grf sec_town_names-nml.grf sec_town_names-nfo.grf sec_town_names.nfo sec_town_names.nfo.bak sec_town_names-nml.nfo parsetab.py
nmlc --verbosity 5 --nml sec_town_names-optimized.nml --nfo sec_town_names-nml.nfo --grf sec_town_names.grf sec_town_names.nml
cp -v sec_town_names-nml.nfo sec_town_names.nfo
mv -v sec_town_names.grf sec_town_names-nml.grf
nforenum sec_town_names.nfo
grfcodec -g 2 -n -e -c sec_town_names.grf .
mv -v sec_town_names.grf sec_town_names-nfo.grf
rm -rfv sec_town_names.nfo.bak
