#!/bin/bash

rm -rfv .nmlcache sec_town_names.grf sec_town_names.nfo parsetab.py
nmlc --nfo sec_town_names.nfo --grf sec_town_names.grf sec_town_names.nml
