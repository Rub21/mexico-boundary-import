#!/bin/bash

#Mexico Latest 2016-04-06
wget http://download.geofabrik.de/north-america/mexico-latest.osm.pbf
osmium cat --object-type=relation --output=relations.osm.opl mexico-latest.osm.pbf
grep "boundary=administrative" relations.osm.opl > administrative.osm.opl
grep "admin_level=6" administrative.osm.opl > admin_level.osm.opl
osmium getid --add-referenced --id-file=admin_level.osm.opl --output=mexico_after_import.osm.pbf mexico-latest.osm.pbf
rm *.opl
minjur-mp mexico_after_import.osm.pbf > mexico_after_import.geojson
tippecanoe -l osm -n way -o mexico_after_import.mbtiles -z10 -Z2 -pscfkr mexico_after_import.geojson

# Mexico data from 2015-09-30
wget https://www.dropbox.com/s/qa3anep06w4m40q/mexico-150930.osm.pbf
osmium cat --object-type=relation --output=relations.osm.opl mexico-150930.osm.pbf
grep "boundary=administrative" relations.osm.opl > administrative.osm.opl
grep "admin_level=6" administrative.osm.opl > admin_level.osm.opl
osmium getid --add-referenced --id-file=admin_level.osm.opl --output=mexico_before_import.osm.pbf  mexico-150930.osm.pbf
rm *.opl
minjur-mp mexico_before_import.osm.pbf  > mexico_before_import.geojson
tippecanoe -l osm -n way -o mexico_before_import.mbtiles -z10 -Z2 -pscfkr mexico_before_import.geojson
rm *.pbf
rm *.geojson