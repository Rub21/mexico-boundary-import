# mexico-boundary-import

This is an easy way to generate geojson for relation which contain `boundary=administrative` and `admin_level=6` imported by [mexico_boundaries_import](http://www.openstreetmap.org/user/mexico_boundaries_import)

### Install requirement apps

```
./install.sh

```

### Generating geojson files

```
./buildgeojson.sh

```

*Output*

- mexico_boundaries_import.geojson 
- mexico_before_import.geojson

The commands for the generation of both files are the same.

Finally upload your file in `https://www.mapbox.com/studio/tilesets/` and start styling the map. 

- Output Map.
